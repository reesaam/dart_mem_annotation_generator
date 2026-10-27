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
    this.annotationType = AnnotationTypes.all,
    this.imports,
    this.variablesList,
    this.isAbstract = false,
    this.isFreezed = false,
    this.isListIncluded = false,
    this.extended = false,
  });
}