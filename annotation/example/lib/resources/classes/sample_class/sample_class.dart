import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../sample_inner_class/sample_inner_class.dart';

part 'sample_class.mem.dart';
part 'sample_class.freezed.dart';
part 'sample_class.g.dart';

enum SampleEnum {
  isEnum,
  notEnum,
}

@Mem.all(withFreezed: true)
class Sample {
  // const Sample({this.sampleEnum, this.name, this.description, this.innerClass});
  SampleEnum? sampleEnum;
  String? name;
  String? description;
  InnerSample? innerClass;
}
