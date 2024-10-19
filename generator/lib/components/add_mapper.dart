import 'package:dart_mem_annotation_generator/extensions/string.dart';

import '../models/variable.dart';
import '../resources/enums.dart';

class AddMapper {
  String generatedModelClassName = '';
  String generatedEntityClassName = '';
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate({List<String>? imports, required String className, required List<Variable> variablesList}) {
    String code = '\n';
    generatedModelClassName = '${className.capitalizeFirst}${AnnotationTypes.model.name.capitalizeFirst}';
    generatedEntityClassName = '${className.capitalizeFirst}${AnnotationTypes.entity.name.capitalizeFirst}';
    variables = variablesList;
    code += '${_addMapperBody(extensionOn: generatedModelClassName, output: generatedEntityClassName)}\n\n${_addMapperBody(extensionOn: generatedEntityClassName, output: generatedModelClassName)}';
    return code;
  }

  String _addMapperBody({String? extensionOn, String? output}) {
    String code = '\n';
    code += 'extension ExtensionOn$extensionOn on $output {$output get mapper => ${output}(${_addMapperFields()});}\n';

    return code;
  }

  String _addMapperFields() {
    String code = '';
    for (Variable variable in variables) {
      code += '${variable.name}: ${variable.name}';
      if (variable.isCoreType != true) code += '.mapper';
      code += ',\n';
    }
    return code;
  }
}
