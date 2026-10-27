import '../resources/enums.dart';

/// Extension of data manipulation for Annotation Types
extension ConvertFromString on String {
  AnnotationTypes? get getAnnotationType => AnnotationTypes.values.where((value) => value.name == this).firstOrNull;
}

extension ConvertFromStringNull on String? {
  AnnotationTypes? get getAnnotationType => this?.getAnnotationType;
}