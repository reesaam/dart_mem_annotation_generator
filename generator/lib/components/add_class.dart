import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/models/generator_data.dart';

import '../functions/add_code.dart';
import '../models/variable.dart';
import '../resources/enums.dart';
import 'log.dart';

class AddClass {
  String generatedClassName = '';
  bool? isFreezed;
  AnnotationTypes? type;
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate(GeneratorData data) {
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
      generatedClass += AddCode.addLine('class $generatedClassName with _\$$generatedClassName {');
      generatedClass += AddCode.addLine('const factory $generatedClassName ({${_addFields(extended: data.extended)}}) = _$generatedClassName;');
      if (type == AnnotationTypes.model) {
        generatedClass += AddCode.addLine('\nfactory $generatedClassName.fromJson(Map<String, dynamic> json) => _\$${generatedClassName}FromJson(json);\n');
      }
      generatedClass += AddCode.addLine('}\n\n');
    } else {
      GeneratorLog.info(title: 'Adding Fields');
      generatedClass += AddCode.addLine(
          'class $generatedClassName ${data.extended == true ? 'extends ${data.className}' : ''} {${_generateConstructor()}\n${_addFields(extended: data.extended)}\n${type == AnnotationTypes.model ? _generateModelToAndFromJson() : ''}}');
    }
    GeneratorLog.info(title: 'Classes Generation Finished...');
    return generatedClass;
  }

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

  String _generateFieldName(Variable variable) => variable.isCoreType == true ? variable.name : '${variable.name}${type?.name.capitalizeFirst}';

  String _generateModelToAndFromJson() {
    String code = '';
    code += AddCode.addLine(_generateModelToJson());
    code += AddCode.addLine(_generateModelFromJson());
    return code;
  }

  String _generateModelToJson() {
    String code = '';
    code += AddCode.addLine('Map<String, dynamic> toJson() {');
    code += AddCode.addLine('final map = <String, dynamic>{};');
    for (Variable variable in variables) {
      code += AddCode.addLine('map[\'${_generateFieldName(variable)}\'] = ${_generateFieldToJson(variable)};');
    }
    code += AddCode.addLine('return map;}');
    return code;
  }

  String _generateModelFromJson() {
    String code = '';
    code += AddCode.addLine('$generatedClassName.fromJson(dynamic json) {');
    for (Variable variable in variables) {
      code += AddCode.addLine('${_generateFieldName(variable)} = ${_generateFieldFromJson(variable)};');
    }
    code += AddCode.addLine('}');
    return code;
  }

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
