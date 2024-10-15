import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

import '../sample_inner_model/sample_inner_model.dart';

part 'sample_model.freezed.dart';
part 'sample_model.g.dart';

@Freezed()
@Mem.model()
class SampleModel with _$SampleModel {
  const factory SampleModel({
    final String? name,
    final String? description,
    final SampleInnerModel? innerModel,
  }) = _SampleModel;

  factory SampleModel.fromJson(Map<String, dynamic> json) => _$SampleModelFromJson(json);
}