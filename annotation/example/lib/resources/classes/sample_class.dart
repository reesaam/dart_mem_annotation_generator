import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

import 'sample_inner_class.dart';

part 'sample_class.mem.dart';
part 'sample_class.mem.g.dart';

// // @Freezed(toJson: false, fromJson: false)
// @Mem.entity()
// class SampleEntity with _$SampleEntity {
//   const factory SampleEntity({
//     final String? name,
//     final String? description,
//     final SampleInnerEntity? innerModel,
//   }) = _SampleEntity;
// }

@Mem()
class Sample {
  const Sample({this.name, this.description, this.innerClass});
  final String? name;
  final String? description;
  final InnerSample? innerClass;
}