// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

class SampleModel {
  SampleModel({
    this.sampleEnum,
    this.name,
    this.description,
    this.innerClassModel,
  });

  SampleEnum? sampleEnum;
  String? name;
  String? description;
  InnerSampleModel? innerClassModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sampleEnum'] = sampleEnum;
    map['name'] = name;
    map['description'] = description;
    map['innerClassModel'] = innerClassModel;
    return map;
  }

  SampleModel.fromJson(dynamic json) {
    sampleEnum = json[sampleEnum];
    name = json[name];
    description = json[description];
    innerClassModel = json[innerClassModel];
  }
}

class SampleEntity {
  SampleEntity({
    this.sampleEnum,
    this.name,
    this.description,
    this.innerClassEntity,
  });

  SampleEnum? sampleEnum;
  String? name;
  String? description;
  InnerSampleEntity? innerClassEntity;
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
