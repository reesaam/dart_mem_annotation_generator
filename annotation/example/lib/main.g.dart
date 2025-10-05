// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InnerSampleModel _$InnerSampleModelFromJson(Map<String, dynamic> json) =>
    _InnerSampleModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$InnerSampleModelToJson(_InnerSampleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

_SampleMEMModelFreezedModel _$SampleMEMModelFreezedModelFromJson(
        Map<String, dynamic> json) =>
    _SampleMEMModelFreezedModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      sampleList: (json['sampleList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SampleMEMModelFreezedModelToJson(
        _SampleMEMModelFreezedModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'sampleList': instance.sampleList,
    };
