/// Annotation Class
library;

/// This is the Base Annotation Class which provides Types and Options for the Annotation
///
/// The Annotation has several Types, but it couldn't use by itself, it should use by one of the types
/// Every [type] has it's options which provides some features of each type, options are specifically recognized by the type
///
/// Types are known as a enum, but users will see them as a constructor and this is the only way of using this Annotation
///
/// [as] will use as rename the class for the DI
/// [route] will use just for pages, basically, route will generate by the plugin and all pages have a route, they should have
/// this option will provide the ability of changing the route and assign a special route for a page

import 'enums.dart';

class ModelEntity {
  final AnnotationTypes? type;
  final Type? as;

  const ModelEntity.model({this.as}) : type = AnnotationTypes.model;
  const ModelEntity.entity({this.as}) : type = AnnotationTypes.entity;
  const ModelEntity.mapper({this.as}) : type = AnnotationTypes.mapper;
  const ModelEntity.json({this.as}) : type = AnnotationTypes.json;
  const ModelEntity.api({this.as}) : type = AnnotationTypes.api;
}
