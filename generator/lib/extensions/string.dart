import 'package:dart_mem_annotation_generator/resources/enums.dart';

import '../resources/constants.dart';

extension GeneralCodeAddTools on String? {
  String addLine(String line) => '$this\n$line';
  String addLineList(List lines) {
    String line = '';
    int counter = 0;
    for (var item in lines) {
      line = line.addLine('(${counter++}) ${item.toString()}');
    }
    return line;
  }

  String addCommentLine(String line) => addLine('/// $line');
  String addCommentLineList(List lines) {
    String line = '';
    for (var item in lines) {
      line = line.addLine(item.toString());
    }
    return line;
  }

  String addSpace() => addLine('\n\n');
}

extension GeneralCodeSnippetAddTools on String {
  String addImport(String path) => addLine('import \'${path}\';');

  String addClass({required String className, required String body, AnnotationTypes? type}) {
    String name = '${elementsMainName.capitalizeFirst}${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    return addLine('class $name {$body}');
  }

  String addMapper({required String className, required String body, AnnotationTypes? type}) {
    String name = 'Extension${elementsMainName.capitalizeFirst}${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    return addLine('extension $name on $className {$body}');
  }
}

extension StringManipulators on String {
  String get capitalizeFirst => this.replaceRange(0, 1, this[0].toUpperCase());
  String get correctImport => '${this.replaceFirst('${this.split('/').first}/', '')}';
}
