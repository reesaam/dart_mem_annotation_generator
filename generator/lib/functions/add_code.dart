import 'package:dart_mem_annotation_generator/extensions/string.dart';

import '../resources/constants.dart';
import '../resources/enums.dart';

/// This class is a standard function to add code in the code generator
/// some parts and function are repetitive, so they should be done in a function
/// especially they will hel in the overall changes in the code-generation
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
