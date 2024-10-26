import 'package:dart_mem_annotation_generator/extensions/string.dart';
import 'package:dart_mem_annotation_generator/models/generator_data.dart';
import 'package:dart_mem_annotation_generator/resources/strings.dart';

import '../functions/add_code.dart';
import '../models/variable.dart';
import '../resources/enums.dart';

class AddMapper {
  List<Variable> variables = List<Variable>.empty(growable: true);

  /// This function is the main class to generate the mapper classes
  String generate(GeneratorData data) {
    String className = data.className?.capitalizeFirst ?? Strings.unnamedClass;
    variables = data.variablesList ?? [];
    String code = '';
    code += AddCode.addCommentLine('  ==> Entity to Model Mapper Extension');
    code += _addMapper(className: className, firstType: AnnotationTypes.entity, secondType: AnnotationTypes.model);
    code += AddCode.addCommentLine('  ==> Model to Entity Mapper Extension');
    code += _addMapper(className: className, firstType: AnnotationTypes.model, secondType: AnnotationTypes.entity);
    return code;
  }

  /// This function will generate the Mappers for both [Model] and [Entity]
  /// Enums, sub-classes and Lists will considered, and everything has been generated for the best response and handle every situation for any type of data
  _addMapper({
    required String className,
    required AnnotationTypes firstType,
    required AnnotationTypes secondType,
  }) {
    String firstTypeClassName = '$className${firstType.getClassName}';
    String secondTypeClassName = '$className${secondType.getClassName}';
    return '\nextension ${Strings.mapperExtensionName}$firstTypeClassName on $firstTypeClassName {$secondTypeClassName get ${Strings.mapperClassName} => $secondTypeClassName(${_addMapperFields(
      className: className,
      firstType: secondType,
      secondType: firstType,
    )});\n}\n';
  }

  /// Generate Field in the Base Class and out them into generated class
  /// This function will use for all generated class such as Models, Entities and Mappers
  /// Classes will generate with adding an extra name at the end of the classes, for models [Model] and for entities [Entity]
  /// This Additional name will also generate for sub-classes and every custom class that the main class includes
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
