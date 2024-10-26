import '../resources/enums.dart';

/// Extension of data manipulation for Annotation Types
extension ConvertFromString on String {
  AnnotationTypes get getAnnotationType => AnnotationTypes.values.firstWhere((value) => value.name == this);
}