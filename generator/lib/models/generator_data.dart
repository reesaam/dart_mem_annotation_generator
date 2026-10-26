import 'package:dart_mem_annotation_generator/models/variable.dart';

import '../resources/enums.dart';

class GeneratorData {
  final String? className;
  final AnnotationTypes? annotationType;
  final List<String>? imports;
  final List<Variable>? variablesList;
  final bool isAbstract;
  final bool isFreezed;
  final bool isListIncluded;
  final bool extended;

  GeneratorData({
    this.className,
    this.annotationType,
    this.imports,
    this.variablesList,
    required this.isAbstract,
    required this.isFreezed,
    required this.isListIncluded,
    required this.extended,
  });
}