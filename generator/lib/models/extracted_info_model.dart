import 'package:analyzer/dart/element/element.dart';

import '../resources/enums.dart';

class ExtractedInfoModel {
  final String name;
  final String? as;
  final Element element;
  final String source;
  final AnnotationTypes type;

  ExtractedInfoModel({
    required this.name,
    this.as,
    required this.element,
    required this.source,
    required this.type,
  });
}
