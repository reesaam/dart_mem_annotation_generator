// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

/// []
/// []
/// []
/// []

@Freezed(toJson: true, fromJson: true)
class SampleModel with _$SampleModel {
  const factory SampleModel({
    @JsonEnum() final SampleEnum? sampleEnum,
    final String? name,
    final String? description,
    final InnerSampleModel? innerClassModel,
  }) = _SampleModel;

  factory SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);
}

@Freezed(toJson: false, fromJson: false)
class SampleEntity with _$SampleEntity {
  const factory SampleEntity({
    @JsonEnum() final SampleEnum? sampleEnum,
    final String? name,
    final String? description,
    final InnerSampleEntity? innerClassEntity,
  }) = _SampleEntity;
}

extension ExtensionOnSampleEntity on SampleEntity {
  SampleModel get mapper => SampleModel(
        sampleEnum: sampleEnum,
        name: name,
        description: description,
        innerClassModel: innerClassEntity?.mapper,
      );
}

extension ExtensionOnSampleModel on SampleModel {
  SampleEntity get mapper => SampleEntity(
        sampleEnum: sampleEnum,
        name: name,
        description: description,
        innerClassEntity: innerClassModel?.mapper,
      );
}
