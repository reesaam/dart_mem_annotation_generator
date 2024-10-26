import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/models/generator_data.dart';

import '../functions/add_code.dart';
import '../models/variable.dart';
import '../resources/enums.dart';

class AddMapper {
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate(GeneratorData data) {
    String className = data.className?.capitalizeFirst ?? 'UnnamedClass';
    variables = data.variablesList ?? [];
    String code = '';
    code += AddCode.addCommentLine('  ==> Entity to Model Mapper Extension');
    code += _addMapper(className: className, firstType: AnnotationTypes.entity, secondType: AnnotationTypes.model);
    code += AddCode.addCommentLine('  ==> Model to Entity Mapper Extension');
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
    return '\nextension MapperExtensionOn$firstTypeClassName on $firstTypeClassName {$secondTypeClassName get mapper => $secondTypeClassName(${_addMapperFields(
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
    for (Variable variable in variables) {
      variable.isCoreType == true
          ? mapperFieldsCode += '${variable.name}: ${variable.name}'
          : mapperFieldsCode += '${variable.name}${firstType.getClassName}: ${variable.name}${secondType.getClassName}?${variable.isList == true ? '.map((e) => e.mapper).toList()' : '.mapper'}';
      mapperFieldsCode += ',\n';
    }
    return mapperFieldsCode;
  }
}
