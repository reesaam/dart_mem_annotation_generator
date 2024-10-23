import 'package:dart_mem_annotation_generator/models/variable.dart';

import '../resources/enums.dart';

class GeneratorData {
  final String? className;
  final AnnotationTypes? annotationType;
  final List<String>? imports;
  final List<Variable>? variablesList;
  final bool? isFreezed;
  final bool? extended;

  GeneratorData({
    this.className,
    this.annotationType,
    this.imports,
    this.variablesList,
    this.isFreezed,
    this.extended,
  });
}