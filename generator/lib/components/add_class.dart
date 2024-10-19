import 'package:dart_mem_annotation_generator/components/log.dart';
import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/models/variable.dart';

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
  }) {
    isFreezed = freezed;
    type = annotationType;
    variables = variablesList;

    String generatedClass = '';

    GeneratorLog.info(title: 'Class generation Commenting');
    generatedClass = generatedClass.addCommentLine('Variables Data:');
    for (Variable variable in variablesList) {
      generatedClass =  generatedClass.addCommentLine('  ${variable.name}:');
      generatedClass =  generatedClass.addCommentLine('==>    typeString: ${variable.typeString}');
      generatedClass =  generatedClass.addCommentLine('==>    type: ${variable.type}');
      generatedClass =  generatedClass.addCommentLine('==>    isCoreType: ${variable.isCoreType}');
      generatedClass =  generatedClass.addCommentLine('==>    isNullable: ${variable.isNullable}');
      generatedClass =  generatedClass.addCommentLine('==>    isFinal: ${variable.isFinal}');
      generatedClass =  generatedClass.addCommentLine('==>    isEnum: ${variable.isEnum}');
    }

    GeneratorLog.info(title: 'Generate Class');
    generatedClassName = '${className.capitalizeFirst}${type?.name.capitalizeFirst}';

    GeneratorLog.info(title: 'Add Imports Function');
    generatedClass = generatedClass.addLine('${_addImports(imports)}\n');
    if (isFreezed == true) {
      generatedClass = generatedClass.addLine('@Freezed(toJson: ${(type == AnnotationTypes.model).toString()}, fromJson: ${(type == AnnotationTypes.model).toString()})\n');
      generatedClass = generatedClass.addLine('class $generatedClassName with _\$$generatedClassName {');
      generatedClass = generatedClass.addLine('const factory $generatedClassName ({${_addFields()}}) = _$generatedClassName;');
      if (type == AnnotationTypes.model) {
        GeneratorLog.info(title: 'Add FromJson');
        generatedClass = generatedClass.addLine('\nfactory $generatedClassName.fromJson(Map<String, dynamic> json) => _\$${generatedClassName}FromJson(json);\n');
      }
      generatedClass = generatedClass.addLine('}\n\n');
    } else {
      GeneratorLog.info(title: 'Add Fields');
      generatedClass = generatedClass.addLine('class $generatedClassName extends $className {${_addFields()}}');
    }

    return generatedClass;
  }

  String _addImports(List<String>? pathList) {
    String imports = '';
    GeneratorLog.info(title: 'Add Imports');
    if (pathList != null) {
      for (String path in pathList) {
        imports = imports.addLine('import \'${path}\';\n');
      }
    }
    return imports;
  }

  String _addFields() {
    GeneratorLog.info(title: 'Add Fields Code');
    String bodyCode = '\n// Class Variables Count: ${variables.length}\n';
    for (Variable variable in variables) {
      bodyCode += '//${variable.typeString}\n';
      if (isFreezed == true && variable.isEnum == true) {
        bodyCode += '@JsonEnum()\n';
      }
      bodyCode += isFreezed == true || variable.isFinal == true ? 'final ' : '';
      // bodyCode += _generateType(variable);
      bodyCode += variable.typeString ?? 'dynamic';
      bodyCode += variable.name;
      bodyCode += isFreezed == true ? ',\n' : ';\n';
    }
    _generateConstructor();
    return bodyCode;
  }

  String _generateConstructor() {
    GeneratorLog.info(title: 'Generate Constructor');
    String cb = '\n';
    String args = '';
    for (Variable variable in variables) {
      args += '${variable.isNullable == true ? '' : 'required'} this.${variable.name},';
    }
    cb += '$generatedClassName({$args});';
    return cb;
  }
}
