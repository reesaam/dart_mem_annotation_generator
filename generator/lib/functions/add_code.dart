import 'package:dart_mem_annotation_generator/extensions/string.dart';

import '../resources/constants.dart';
import '../resources/enums.dart';

class AddCode {
  static String addLine(String? line) => '\n${line ?? ''}';
  static String addLineList(List lines) {
    String line = '';
    int counter = 0;
    for (var item in lines) {
      line += addLine('(${counter++}) ${item.toString()}');
    }
    return line;
  }

  static String addCommentLine(String? line) => line == null ? '' : addLine('/// ${line}');
  static String addCommentLineList(List lines) {
    String line = '';
    for (var item in lines) {
      line += addLine(item.toString());
    }
    return line;
  }

  static String addSpace() => addLine('\n\n');

  static String addImport(String path) => addLine('import \'${path}\';');

  static String addClass({required String className, required String body, AnnotationTypes? type}) {
    String name = '${elementsMainName.capitalizeFirst}${className.capitalizeFirst}${type?.name.capitalizeFirst}';
    return addLine('class $name {$body}');
  }
}
