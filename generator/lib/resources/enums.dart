import 'package:dart_mem_annotation_generator/extensions/string.dart';

enum AnnotationTypes {
  all,
  model,
  entity,
  json,
  api,
  unknown;

  String get getClassName => name.capitalizeFirst;
}

enum ImportDependencies {
  modelEntityAnnotation(url: 'package:dart_mem_annotation/annotation.dart');

  final String url;
  const ImportDependencies({required this.url});
}

enum LogType {
  normal(''),
  info('Info'),
  warning('Warning'),
  error('Error');

  final String typeName;
  const LogType(this.typeName);
}