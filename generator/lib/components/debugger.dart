import 'dart:developer';

import 'package:dart_mem_annotation_generator/resources/config.dart';

class Debugger {
  Debugger() {
    debuggerIsActive ? debugger() : null;
  }
}
