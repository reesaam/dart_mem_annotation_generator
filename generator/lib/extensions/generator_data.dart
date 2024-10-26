import 'package:dart_mem_annotation_generator/models/generator_data.dart';

import '../models/variable.dart';
import '../resources/enums.dart';

/// [GeneratorData] is a model to hold data about generation
/// we need some data manipulations extension on that
/// here they are
extension CopyWith on GeneratorData {
  GeneratorData copyWith({
    String? className,
    AnnotationTypes? annotationType,
    List<String>? imports,
    List<Variable>? variablesList,
    bool? isFreezed,
    bool? extended,
  }) =>
      GeneratorData(
        className: className ?? this.className,
        annotationType: annotationType ?? this.annotationType,
        imports: imports ?? this.imports,
        variablesList: variablesList ?? this.variablesList,
        isFreezed: isFreezed ?? this.isFreezed,
        extended: extended ?? this.extended,
      );
}
