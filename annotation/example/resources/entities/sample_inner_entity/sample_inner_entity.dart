import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

// part 'sample_inner_model.freezed.dart';
// part 'sample_inner_model.g.dart';

@Freezed(toJson: false, fromJson: false)
@Mem.entity()
class SampleInnerEntity with _$SampleInnerEntity {
  const factory SampleInnerEntity({
    final String? name,
    final String? description,
  }) = _SampleInnerEntity;
}