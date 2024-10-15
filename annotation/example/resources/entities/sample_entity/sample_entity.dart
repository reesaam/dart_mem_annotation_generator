import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

import '../sample_inner_entity/sample_inner_entity.dart';

// part 'sample_entity.freezed.dart';
// part 'sample_entity.g.dart';

@Freezed(toJson: false, fromJson: false)
@Mem.entity()
class SampleEntity with _$SampleEntity {
  const factory SampleEntity({
    final String? name,
    final String? description,
    final SampleInnerEntity? innerModel,
  }) = _SampleEntity;
}