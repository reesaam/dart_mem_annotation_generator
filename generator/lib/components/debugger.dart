import 'dart:developer';

import 'package:dart_mem_annotation_generator/resources/config.dart';

/// Debugger class is using for me, in the time of development
class Debugger {
  Debugger() {
    debuggerIsActive ? debugger() : null;
  }
}
