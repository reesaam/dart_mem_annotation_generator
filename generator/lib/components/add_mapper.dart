import 'package:dart_mem_annotation_generator/extensions/string.dart';

import '../models/variable.dart';
import '../resources/constants.dart';
import '../resources/enums.dart';

class AddMapper {

  String generatedClassName = '';
  List<Variable> variables = List<Variable>.empty(growable: true);

  String generate({List<String>? imports, required String className, AnnotationTypes? type, required List<Variable> variablesList}) {
    generatedClassName = '${elementsMainName.capitalizeFirst}${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    variables = variablesList;
    String name = 'Extension$generatedClassName';
    return 'extension $name on $className {${_addMapperBody()}}';
  }

  String _addMapperBody() {
    return '';
  }
}