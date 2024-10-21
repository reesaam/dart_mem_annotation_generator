import 'package:dart_mem_annotation_generator/components/log.dart';
import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/functions/prints.dart';
import 'package:dart_mem_annotation_generator/models/variable.dart';

import '../functions/add_code.dart';
import '../resources/enums.dart';

class AddClass {
  String generatedClassName = '';
  bool? isFreezed;
  AnnotationTypes? type;
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate({
    List<String>? imports,
    required String className,
    required AnnotationTypes annotationType,
    required List<Variable> variablesList,
    bool? freezed,
    bool? extended,
  }) {
    isFreezed = freezed;
    type = annotationType;
    variables = variablesList;

    String generatedClass = '';
    // generatedClass += Prints.variablesList(variables);

    GeneratorLog.info(title: 'Generating Class...');
    generatedClassName = '${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    generatedClass += AddCode.addLine('${_addImports(imports)}\n');
    if (isFreezed == true) {
      bool jsonGeneration = type == AnnotationTypes.model;
      generatedClass += AddCode.addLine('@Freezed(toJson: ${jsonGeneration.toString()}, fromJson: ${jsonGeneration.toString()})');
      generatedClass += AddCode.addLine('class $generatedClassName with _\$$generatedClassName {');
      generatedClass += AddCode.addLine('const factory $generatedClassName ({${_addFields(extended: extended)}}) = _$generatedClassName;');
      if (type == AnnotationTypes.model) {
        generatedClass += AddCode.addLine('\nfactory $generatedClassName.fromJson(Map<String, dynamic> json) => _\$${generatedClassName}FromJson(json);\n');
      }
      generatedClass += AddCode.addLine('}\n\n');
    } else {
      GeneratorLog.info(title: 'Adding Fields');
      generatedClass += AddCode.addLine('class $generatedClassName ${extended == true ? 'extends $className' : ''} {${_generateConstructor()}\n${_addFields(extended: extended)}\n${type == AnnotationTypes.model ? _generateModelToAndFromJson() : ''}}');
    }

    return generatedClass;
  }

  String _addImports(List<String>? pathList) {
    String imports = '';
    if (pathList != null) {
      for (String path in pathList) {
        imports += AddCode.addLine('import \'${path}\';\n');
      }
    }
    return imports;
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
    generatedType = variable.typeString == null
        ? 'dynamic'
        : variable.isCoreType == true
            ? variable.typeString!
            : '${variable.typeString!.trim()}${type?.name.capitalizeFirst}';
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
      code += AddCode.addLine('map[\'${_generateFieldName(variable)}\'] = ${_generateFieldName(variable)};');
    }
    code += AddCode.addLine('return map;}');
    return code;
  }

  String _generateModelFromJson() {
    String code = '';
    code += AddCode.addLine('$generatedClassName.fromJson(dynamic json) {');
    for (Variable variable in variables) {
      code += AddCode.addLine('${_generateFieldName(variable)} = json[${_generateFieldName(variable)}];');
    }
    code += AddCode.addLine('}');
    return code;
  }
}
