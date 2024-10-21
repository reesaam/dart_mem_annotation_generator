// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_inner_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

/// [{String? name}, {String? description}, {InnerInnerSample? innerInnerSampleClass}]
/// [{String? name}, {String? description}, {InnerInnerSample? innerInnerSampleClass}]
/// [{String? name}, {String? description}, {InnerInnerSample? innerInnerSampleClass}]

@Freezed(toJson: true, fromJson: true)
class InnerSampleModel with _$InnerSampleModel {
  const factory InnerSampleModel({
    final String? name,
    final String? description,
    final InnerInnerSampleModel? innerInnerSampleClassModel,
  }) = _InnerSampleModel;

  factory InnerSampleModel.fromJson(Map<String, dynamic> json) =>
      _$InnerSampleModelFromJson(json);
}

@Freezed(toJson: false, fromJson: false)
class InnerSampleEntity with _$InnerSampleEntity {
  const factory InnerSampleEntity({
    final String? name,
    final String? description,
    final InnerInnerSampleEntity? innerInnerSampleClassEntity,
  }) = _InnerSampleEntity;
}

extension ExtensionOnInnerSampleEntity on InnerSampleEntity {
  InnerSampleModel get mapper => InnerSampleModel(
        name: name,
        description: description,
        innerInnerSampleClassModel: innerInnerSampleClassEntity?.mapper,
      );
}

extension ExtensionOnInnerSampleModel on InnerSampleModel {
  InnerSampleEntity get mapper => InnerSampleEntity(
        name: name,
        description: description,
        innerInnerSampleClassEntity: innerInnerSampleClassModel?.mapper,
      );
}
