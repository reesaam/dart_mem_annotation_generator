import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

// part 'sample_inner_model.freezed.dart';
// part 'sample_inner_model.g.dart';

// @Freezed()
// @Mem.model()
// class SampleInnerModel with _$SampleInnerModel {
//   const factory SampleInnerModel({
//     final String? name,
//     final String? description,
//   }) = _SampleInnerModel;
//
//   factory SampleInnerModel.fromJson(Map<String, dynamic> json) => _$SampleInnerModelFromJson(json);
// }

@Mem.model()
class InnerSample {
  const InnerSample({this.name, this.description});
  final String? name;
  final String? description;
}