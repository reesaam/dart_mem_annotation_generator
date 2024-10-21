// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_inner_inner_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

/// [{String? name}, {String? description}, {String? longDescription}]
/// [{String? name}, {String? description}, {String? longDescription}]
/// [{String? name}, {String? description}, {String? longDescription}]

@Freezed(toJson: true, fromJson: true)
class InnerInnerSampleModel with _$InnerInnerSampleModel {
  const factory InnerInnerSampleModel({
    final String? name,
    final String? description,
    final String? longDescription,
  }) = _InnerInnerSampleModel;

  factory InnerInnerSampleModel.fromJson(Map<String, dynamic> json) =>
      _$InnerInnerSampleModelFromJson(json);
}

@Freezed(toJson: false, fromJson: false)
class InnerInnerSampleEntity with _$InnerInnerSampleEntity {
  const factory InnerInnerSampleEntity({
    final String? name,
    final String? description,
    final String? longDescription,
  }) = _InnerInnerSampleEntity;
}

extension ExtensionOnInnerInnerSampleEntity on InnerInnerSampleEntity {
  InnerInnerSampleModel get mapper => InnerInnerSampleModel(
        name: name,
        description: description,
        longDescription: longDescription,
      );
}

extension ExtensionOnInnerInnerSampleModel on InnerInnerSampleModel {
  InnerInnerSampleEntity get mapper => InnerInnerSampleEntity(
        name: name,
        description: description,
        longDescription: longDescription,
      );
}
