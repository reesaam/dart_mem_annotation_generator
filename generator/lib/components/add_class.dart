import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/models/variable.dart';

import '../resources/constants.dart';
import '../resources/enums.dart';

class AddClass {

  String generatedClassName = '';
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate({List<String>? imports, required String className, AnnotationTypes? type, required List<Variable> variablesList}) {
    // generatedClassName = '_\$${elementsMainName.capitalizeFirst}${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    generatedClassName = '${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    variables = variablesList;
    return '${_addImports(imports)}\n@freezed\nclass $generatedClassName extends $className {${_addClassBody()}}';
  }

  String _addImports(List<String>? pathList) {
    String imports = '';
    if (pathList != null) {
      for (String path in pathList) {
        imports += 'import \'${path}\';';
      }
    }
    return imports;
  }

  String _addClassBody() {
    String bodyCode = '\n// Class Variables Count: ${variables.length}\n';
    for(Variable variable in variables) {
      bodyCode += variable.isFinal == true ? 'final ' : '';
      bodyCode += _generateType(variable);
      bodyCode += variable.name;
      bodyCode += ';\n';
    }
    _generateConstructor();
    return bodyCode;
  }

  String _generateType(Variable variable) {
    String type = '';
    if (variable.type == null) {
      type += 'dynamic';
    } else {
      type += variable.type!.toString();
      type += variable.isNullable == true && variable.type!.toString()[variable.type!.toString().length - 1] != '?' ? '?' : '';
    }
    type += ' ';
    return type;
  }

  String _generateConstructor() {
    String cb = '\n';
    String args = '';
    for(Variable variable in variables) {
      args += '${variable.isNullable == true ? '' : 'required'} this.${variable.name},';
    }
    cb += '$generatedClassName({$args});';
    return cb;
  }
}
