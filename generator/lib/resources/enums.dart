enum AnnotationTypes {
  model,
  entity,
  json,
  api,
  unknown,
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