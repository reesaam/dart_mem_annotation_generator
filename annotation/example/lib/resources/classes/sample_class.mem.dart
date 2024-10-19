// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

/// name:  sampleEnum
/// declaration:  SampleEnum? get sampleEnum
/// declaration.check:  SampleEnum?
/// kind:  GETTER
/// shortName:  sample_class.dart
/// fullName:  /example_for_dart_mem_annotation/lib/resources/classes/sample_class.dart
/// check:  SampleEnum? get sampleEnum
/// variable: sampleEnum / SampleEnum? get sampleEnum / GETTER
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: name / String? get name / GETTER
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: description / String? get description / GETTER
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: innerClass / InnerSample? get innerClass / GETTER
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: sampleEnum / SampleEnum? sampleEnum / FIELD
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: name / String? name / FIELD
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: description / String? description / FIELD
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable: innerClass / InnerSample? innerClass / FIELD
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
/// variable:  / Sample Sample({SampleEnum? sampleEnum, String? name, String? description, InnerSample? innerClass}) / CONSTRUCTOR
/// Visitor Key/Val: sampleEnum / SampleEnum / SampleEnum
/// Visitor Fields: SampleEnum? / enum SampleEnum / SampleEnum / SampleEnum
/// Visitor Element Name: sampleEnum / sampleEnum
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
///   sampleEnum:
/// ==>    typeString: SampleEnum?
/// ==>    type: EnumElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: true
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
///   innerClass:
/// ==>    typeString: InnerSample?
/// ==>    type: ClassElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: false

@Freezed(toJson: true, fromJson: true)
class SampleModel with _$SampleModel {
  const factory SampleModel({
// Class Variables Count: 4
//SampleEnum?
    @JsonEnum() final SampleEnum? sampleEnum,
//String?
    final String? name,
//String?
    final String? description,
//InnerSample?
    final InnerSample? innerClass,
  }) = _SampleModel;

  factory SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);
}

/// Variables Data:
///   sampleEnum:
/// ==>    typeString: SampleEnum?
/// ==>    type: EnumElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: true
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
///   innerClass:
/// ==>    typeString: InnerSample?
/// ==>    type: ClassElementImpl
/// ==>    isCoreType: false
/// ==>    isNullable: true
/// ==>    isFinal: false
/// ==>    isEnum: false

@Freezed(toJson: false, fromJson: false)
class SampleEntity with _$SampleEntity {
  const factory SampleEntity({
// Class Variables Count: 4
//SampleEnum?
    @JsonEnum() final SampleEnum? sampleEnum,
//String?
    final String? name,
//String?
    final String? description,
//InnerSample?
    final InnerSample? innerClass,
  }) = _SampleEntity;
}

extension ExtensionOnSampleModel on SampleEntity {
  SampleEntity get mapper => SampleEntity(
        sampleEnum: sampleEnum.mapper,
        name: name.mapper,
        description: description.mapper,
        innerClass: innerClass.mapper,
      );
}

extension ExtensionOnSampleEntity on SampleModel {
  SampleModel get mapper => SampleModel(
        sampleEnum: sampleEnum.mapper,
        name: name.mapper,
        description: description.mapper,
        innerClass: innerClass.mapper,
      );
}
