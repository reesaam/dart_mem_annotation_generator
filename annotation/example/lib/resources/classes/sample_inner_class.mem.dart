// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_inner_class.dart';

// **************************************************************************
// Generator: AnnotationBuilder
// **************************************************************************

class InnerSampleModel {
  InnerSampleModel({
    this.name,
    this.description,
  });

  String? name;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['description'] = description;
    return map;
  }

  InnerSampleModel.fromJson(dynamic json) {
    name = json[name];
    description = json[description];
  }
}

class InnerSampleEntity {
  InnerSampleEntity({
    this.name,
    this.description,
  });

  String? name;
  String? description;
}

extension ExtensionOnInnerSampleEntity on InnerSampleEntity {
  InnerSampleModel get mapper => InnerSampleModel(
        name: name,
        description: description,
      );
}

extension ExtensionOnInnerSampleModel on InnerSampleModel {
  InnerSampleEntity get mapper => InnerSampleEntity(
        name: name,
        description: description,
      );
}
