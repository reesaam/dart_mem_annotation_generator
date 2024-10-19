// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_inner_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

/// name:  name
/// declaration:  String? get name
/// declaration.check:  String?
/// kind:  GETTER
/// shortName:  sample_inner_class.dart
/// fullName:  /example_for_dart_mem_annotation/lib/resources/classes/sample_inner_class.dart
/// check:  String? get name
/// variable: name / String? get name / GETTER
/// Visitor Key/Val: name / String / String
/// Visitor Fields: String? / abstract final class String implements Comparable<String>, Pattern / String / String
/// Visitor Element Name: name / name
/// variable: description / String? get description / GETTER
/// Visitor Key/Val: name / String / String
/// Visitor Fields: String? / abstract final class String implements Comparable<String>, Pattern / String / String
/// Visitor Element Name: name / name
/// variable: name / String? name / FIELD
/// Visitor Key/Val: name / String / String
/// Visitor Fields: String? / abstract final class String implements Comparable<String>, Pattern / String / String
/// Visitor Element Name: name / name
/// variable: description / String? description / FIELD
/// Visitor Key/Val: name / String / String
/// Visitor Fields: String? / abstract final class String implements Comparable<String>, Pattern / String / String
/// Visitor Element Name: name / name
/// variable:  / InnerSample InnerSample({String? name, String? description}) / CONSTRUCTOR
/// Visitor Key/Val: name / String / String
/// Visitor Fields: String? / abstract final class String implements Comparable<String>, Pattern / String / String
/// Visitor Element Name: name / name
///

/// metadata:
/// Mem.all
///
///
/// []
/// ()
/// constructor
/// CONSTRUCTOR
/// all
/// all
/// [{Type? as}, {bool? withFreezed}]
/// /dart_mem_annotation/lib/src/base.dart
/// Variables Data:
///   name:
/// ==>    typeString: String?
/// ==>    type: ClassElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: false
///   description:
/// ==>    typeString: String?
/// ==>    type: ClassElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: false

@Freezed(toJson: true, fromJson: true)
class InnerSampleModel with _$InnerSampleModel {
  const factory InnerSampleModel({
// Class Variables Count: 2
//String?
    final String? name,
//String?
    final String? description,
  }) = _InnerSampleModel;

  factory InnerSampleModel.fromJson(Map<String, dynamic> json) =>
      _$InnerSampleModelFromJson(json);
}

/// Variables Data:
///   name:
/// ==>    typeString: String?
/// ==>    type: ClassElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: false
///   description:
/// ==>    typeString: String?
/// ==>    type: ClassElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: false

@Freezed(toJson: false, fromJson: false)
class InnerSampleEntity with _$InnerSampleEntity {
  const factory InnerSampleEntity({
// Class Variables Count: 2
//String?
    final String? name,
//String?
    final String? description,
  }) = _InnerSampleEntity;
}

extension ExtensionOnInnerSampleModel on InnerSampleEntity {
  InnerSampleEntity get mapper => InnerSampleEntity(
        name: name.mapper,
        description: description.mapper,
      );
}

extension ExtensionOnInnerSampleEntity on InnerSampleModel {
  InnerSampleModel get mapper => InnerSampleModel(
        name: name.mapper,
        description: description.mapper,
      );
}
