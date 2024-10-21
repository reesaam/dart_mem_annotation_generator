import 'package:dart_mem_annotation_generator/extensions/string.dart';

import '../models/variable.dart';
import '../resources/enums.dart';

class AddMapper {
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate({List<String>? imports, required String name, required List<Variable> variablesList}) {
    String className = name.capitalizeFirst;
    variables = variablesList;
    String code = '';
    code += _addMapper(className: className, firstType: AnnotationTypes.entity, secondType: AnnotationTypes.model);
    code += _addMapper(className: className, firstType: AnnotationTypes.model, secondType: AnnotationTypes.entity);
    return code;
  }

  _addMapper({
    required String className,
    required AnnotationTypes firstType,
    required AnnotationTypes secondType,
  }) {
    String firstTypeClassName = '$className${firstType.getClassName}';
    String secondTypeClassName = '$className${secondType.getClassName}';
    return '\nextension ExtensionOn$firstTypeClassName on $firstTypeClassName {$secondTypeClassName get mapper => $secondTypeClassName(${_addMapperFields(
      className: className,
      firstType: secondType,
      secondType: firstType,
    )});}\n';
  }

  String _addMapperFields({
    required String className,
    required AnnotationTypes firstType,
    required AnnotationTypes secondType,
  }) {
    String mapperFieldsCode = '';
    String inputVariableCode = '';
    String outputVariableCode = '';
    for (Variable variable in variables) {
      if (variable.isCoreType != true) {
        inputVariableCode = firstType.getClassName;
        outputVariableCode = '${secondType.getClassName}?.mapper';
      }
      mapperFieldsCode += '${variable.name}$inputVariableCode: ${variable.name}$outputVariableCode,\n';
    }
    return mapperFieldsCode;
  }
}
