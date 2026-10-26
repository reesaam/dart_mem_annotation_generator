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
  Map<String, dynamic> json,
) => _SampleMEMModelFreezedModel(
  name: json['name'] as String?,
  description: json['description'] as String?,
  sampleList: (json['sampleList'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$SampleMEMModelFreezedModelToJson(
  _SampleMEMModelFreezedModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'sampleList': instance.sampleList,
};

_SampleMEMModelFreezedListIncludedModel
_$SampleMEMModelFreezedListIncludedModelFromJson(Map<String, dynamic> json) =>
    _SampleMEMModelFreezedListIncludedModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SampleMEMModelFreezedListIncludedModelToJson(
  _SampleMEMModelFreezedListIncludedModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
};

_SampleMEMModelFreezedListIncludedModelsList
_$SampleMEMModelFreezedListIncludedModelsListFromJson(
  Map<String, dynamic> json,
) => _SampleMEMModelFreezedListIncludedModelsList(
  dataList:
      (json['dataList'] as List<dynamic>?)
          ?.map(
            (e) => SampleMEMModelFreezedListIncludedModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <SampleMEMModelFreezedListIncludedModel>[],
);

Map<String, dynamic> _$SampleMEMModelFreezedListIncludedModelsListToJson(
  _SampleMEMModelFreezedListIncludedModelsList instance,
) => <String, dynamic>{'dataList': instance.dataList};
