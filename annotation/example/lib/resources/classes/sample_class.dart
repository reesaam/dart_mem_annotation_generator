import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';
// import 'package:json_annotation/json_annotation.dart';

import 'sample_inner_class.dart';

part 'sample_class.mem.dart';
// part 'sample_class.mem.g.dart';
// part 'sample_class.freezed.dart';
// part 'sample_class.g.dart';

// part 'sample_class.freezed.mem.dart';
// part 'sample_class.g.mem.dart';

// part 'sample_class.mem.freezed.dart';
// part 'sample_class.mem.g.dart';

enum SampleEnum {
  isEnum,
  notEnum,
}

@Mem.all()
class Sample {
  const Sample({this.sampleEnum, this.name, this.description, this.innerClass});
  final SampleEnum? sampleEnum;
  final String? name;
  final String? description;
  final InnerSample? innerClass;
}
