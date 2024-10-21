// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleModelImpl _$$SampleModelImplFromJson(Map<String, dynamic> json) =>
    _$SampleModelImpl(
      sampleEnum: $enumDecodeNullable(_$SampleEnumEnumMap, json['sampleEnum']),
      name: json['name'] as String?,
      description: json['description'] as String?,
      innerClassModel: json['innerClassModel'] == null
          ? null
          : InnerSampleModel.fromJson(
              json['innerClassModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SampleModelImplToJson(_$SampleModelImpl instance) =>
    <String, dynamic>{
      'sampleEnum': _$SampleEnumEnumMap[instance.sampleEnum],
      'name': instance.name,
      'description': instance.description,
      'innerClassModel': instance.innerClassModel,
    };

const _$SampleEnumEnumMap = {
  SampleEnum.isEnum: 'isEnum',
  SampleEnum.notEnum: 'notEnum',
};
