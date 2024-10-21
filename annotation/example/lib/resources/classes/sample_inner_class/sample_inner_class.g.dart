// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_inner_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnerSampleModelImpl _$$InnerSampleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InnerSampleModelImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      innerInnerSampleClassModel: json['innerInnerSampleClassModel'] == null
          ? null
          : InnerInnerSampleModel.fromJson(
              json['innerInnerSampleClassModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InnerSampleModelImplToJson(
        _$InnerSampleModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'innerInnerSampleClassModel': instance.innerInnerSampleClassModel,
    };
