import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/models/generator_data.dart';

import '../functions/add_code.dart';
import '../models/variable.dart';
import '../resources/enums.dart';
import 'log.dart';

class AddClass {
  String generatedClassName = '';
  bool? isAbstract;
  bool? isFreezed;
  AnnotationTypes? type;
  List<Variable> variables = List<Variable>.empty(growable: true);

  /// This is the main function to generate everything
  /// at first variables, types and modes of generation will detected and stored
  /// then everything will generate
  /// at the first step, classes of `Model` and Entity will generate
  /// (Every class will generate with a Additional name at the end of the name of class Model and `Entity`)
  /// then, mappers will generate for both directions of model to entity and entity to model
  ///
  /// In Freezed mode all classes will decorated with `@freezed` annotation, of course, freezed annotations are custom, we know that in entities will do not need `toJson` and `fromJson` functions
  /// so, it should be informed to freezed
  /// but we have both functions for Models
  ///
  /// This code generator also support the post-process-code-generation. So, at first, everything will generate, then freezed builder will call to generate everything with its annotation and code-generator
  ///
  String generate(GeneratorData data) {
    isAbstract = data.isAbstract;
    isFreezed = data.isFreezed;
    type = data.annotationType;
    variables = data.variablesList ?? [];

    String generatedClass = '';
    // generatedClass += Prints.variablesList(variables);

    GeneratorLog.info(title: 'Generating Class...');
    generatedClassName = '${data.className?.capitalizeFirst}${type?.name.capitalizeFirst}';
    if (isFreezed == true) {
      bool jsonGeneration = type == AnnotationTypes.model;
      generatedClass += AddCode.addLine('@Freezed(toJson: ${jsonGeneration.toString()}, fromJson: ${jsonGeneration.toString()})');
      generatedClass += AddCode.addLine('abstract class $generatedClassName with _\$$generatedClassName {');
      generatedClass += AddCode.addLine('const factory $generatedClassName ({${_addFields(extended: data.extended)}}) = _$generatedClassName;');
      if (type == AnnotationTypes.model) {
        generatedClass += AddCode.addLine('\nfactory $generatedClassName.fromJson(Map<String, dynamic> json) => _\$${generatedClassName}FromJson(json);\n');
      }
      generatedClass += AddCode.addLine('}\n\n');
    } else {
      GeneratorLog.info(title: 'Adding Fields');
      generatedClass += AddCode.addLine(
          '${isAbstract ?? false ? 'abstract ' : ''}class $generatedClassName ${data.extended == true ? 'extends ${data.className}' : ''} {${_generateConstructor()}\n${_addFields(extended: data.extended)}\n${type == AnnotationTypes.model ? _generateModelToAndFromJson() : ''}}');
    }
    GeneratorLog.info(title: 'Classes Generation Finished...');
    return generatedClass;
  }

  /// This function will generate the [Constructor] for the main class
  /// all input variables should consider in that
  /// also, we will consider the required variables
  /// In the Freezed mode, the code generation will be different, every variable should be final and nullable according to its documents
  /// we also consider non-final or non-nullable variables with required and some other options
  String _generateConstructor() {
    GeneratorLog.info(title: 'Generating Constructor');
    String cb = '\n';
    String args = '';
    for (Variable variable in variables) {
      args += '${variable.isNullable != true || variable.hasRequired == true ? 'required' : ''} this.${_generateFieldName(variable)},';
    }
    cb += '$generatedClassName({$args});';
    return cb;
  }

  /// All fields will detect and generate with this functions
  /// Enums, Lists, sub-classes and dart-core variables and also non-dart-core variables will consider
  String _addFields({bool? extended}) {
    GeneratorLog.info(title: 'Generating Fields Code');
    String bodyCode = '\n';
    for (Variable variable in variables) {
      isFreezed == true && variable.isEnum == true ? bodyCode += '@JsonEnum()\n' : null;
      bodyCode += isFreezed == true || variable.isFinal == true || extended == true ? 'final ' : '';
      bodyCode += _generateType(variable);
      bodyCode += _generateFieldName(variable);
      bodyCode += isFreezed == true ? ',\n' : ';\n';
    }
    return bodyCode;
  }

  /// This function will detect, generate and reproduce types for any type of type :)
  /// unknown or not considered types will generate as [dynamic]
  String _generateType(Variable variable) {
    String generatedType = '';
    if (variable.type == null || variable.typeString == null) {
      generatedType = 'dynamic';
    } else if (variable.isList == true) {
      generatedType = _getGeneratedListInnerType(variable);
    } else {
      if (variable.isCoreType == true) {
        generatedType = variable.typeString!;
      } else {
        generatedType = '${variable.typeString}${type?.name.capitalizeFirst}';
      }
    }
    generatedType = generatedType.contains('?') == true ? '${generatedType.replaceFirst('?', '')}?' : generatedType;
    generatedType += ' ';
    return generatedType;
  }

  /// Field names needs to be generated, especially for sub-classes
  /// they should have entity or model additional word at the end of them
  String _generateFieldName(Variable variable) => variable.isCoreType == true ? variable.name : '${variable.name}${type?.name.capitalizeFirst}';

  String _generateModelToAndFromJson() {
    String code = '';
    code += AddCode.addLine(_generateModelToJson());
    code += AddCode.addLine(_generateModelFromJson());
    return code;
  }

  /// This function will generate [toJson] for Models
  String _generateModelToJson() {
    String code = '';
    code += AddCode.addLine('Map<String, dynamic> toJson() {');
    code += AddCode.addLine('final map = <String, dynamic>{};');
    for (Variable variable in variables) {
      code += AddCode.addLine('map[\'${_generateFieldName(variable)}\'] = ${_generateFieldToJson(variable)};');
    }
    code += AddCode.addLine('return map;\n}');
    return code;
  }

  /// This function will generate [fromJson] for Models
  String _generateModelFromJson() {
    String code = '';
    code += AddCode.addLine('$generatedClassName.fromJson(dynamic json) {');
    for (Variable variable in variables) {
      code += AddCode.addLine('${_generateFieldName(variable)} = ${_generateFieldFromJson(variable)};');
    }
    code += AddCode.addLine('}');
    return code;
  }

  /// This function will generate the fields of [toJson] function
  String _generateFieldToJson(Variable variable) {
    String code = '';
    if (isFreezed == true) {
      code += _defaultToJson(variable);
    } else {
      if (variable.isList == true) {
        code += _listToJson(variable);
      } else if (variable.isEnum == true) {
        code += _enumToJson(variable);
      } else if (variable.isCoreType != true) {
        code += _coreTypeToJson(variable);
      } else {
        code += _defaultToJson(variable);
      }
    }
    return code;
  }

  /// This function will generate the fields of [fromJson] function
  String _generateFieldFromJson(Variable variable) {
    String code = '';
    if (isFreezed == true) {
      code += _defaultFromJson(variable);
    } else {
      if (variable.isList == true) {
        code += _listFromJson(variable);
      } else if (variable.isEnum == true) {
        code += _enumFromJson(variable);
      } else if (variable.isCoreType != true) {
        code += _coreTypeFromJson(variable);
      } else {
        code += _defaultFromJson(variable);
      }
    }
    return code;
  }

  /// These function are generating everything for above functions, every repetitive job considered as a function
  /// Also we separate some parts of code and function to improve readability
  /// Some places, changes are critical, so code generation are depended to function for matter of changes in the future
  String _coreTypeToJson(Variable variable) => '${_generateFieldName(variable)}?.toJson()';
  String _coreTypeFromJson(Variable variable) => '${variable.typeString?.replaceAll('?', '')}${type?.name.capitalizeFirst}.fromJson(json[\'${_generateFieldName(variable)}\'])';
  String _listToJson(Variable variable) => variable.isCoreType == true ? _generateFieldName(variable) : '${_generateFieldName(variable)}?.map((e) => e.toJson()).toList()';
  String _listFromJson(Variable variable) => variable.isCoreType == true
      ? 'json[${_generateFieldName(variable)}]'
      : '(json[${_generateFieldName(variable)}] as List).map((e) => ${_getListInnerType(variable)}${type?.name.capitalizeFirst}.fromJson(e)).toList()';
  String _enumToJson(Variable variable) => '${_generateFieldName(variable)}?.name';
  String _enumFromJson(Variable variable) => '${variable.typeString?.replaceAll('?', '')}.values.firstWhere((e) => e.name == json[\'${_generateFieldName(variable)}\'])';
  String _defaultToJson(Variable variable) => _generateFieldName(variable);
  String _defaultFromJson(Variable variable) => 'json[${_generateFieldName(variable)}]';
  String _getListInnerType(Variable variable) => variable.typeString!.replaceAll('List', '').replaceAll('<', '').replaceAll('>', '').replaceAll('?', '');
  String _getGeneratedListInnerType(Variable variable) =>
      variable.typeString!.replaceAll(_getListInnerType(variable), '${_getListInnerType(variable)}${variable.isCoreType == true ? '' : type?.name.capitalizeFirst}');
}
