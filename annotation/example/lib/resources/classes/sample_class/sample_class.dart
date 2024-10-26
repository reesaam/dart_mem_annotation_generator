import 'package:dart_mem_annotation/annotation.dart';

import '../sample_inner_class/sample_inner_class.dart';

part 'sample_class.mem.dart';

enum SampleEnum {
  isEnum,
  notEnum,
}

@Mem.all()
class Sample {
  SampleEnum? sampleEnum;
  String? name;
  String? description;
  InnerSample? innerClass;
  List<String>? sampleList;
  List<InnerSample>? innerSampleList;
}
