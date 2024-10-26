/// Annotation Class
library;

/// This is the Base Annotation Class which provides Types and Options for the Annotation
///
/// The Annotation has several Types, but it couldn't use by itself, it should use by one of the types
/// Every [typeString] has it's options which provides some features of each type, options are specifically recognized by the type
///
/// Types are known as a enum, but users will see them as a constructor and this is the only way of using this Annotation
///
/// [as] will use as rename the class by another [Type]

import 'enums.dart';

class Mem {
  final AnnotationTypes? type;
  final Type? as;
  final bool? withFreezed;
  final bool? extendsBaseClass;

  const Mem.all({this.as, this.withFreezed, this.extendsBaseClass}) : type = AnnotationTypes.all;
  // const Mem.model({this.as, this.withFreezed, this.extendsBaseClass}) : type = AnnotationTypes.model;
  // const Mem.entity({this.as, this.withFreezed, this.extendsBaseClass}) : type = AnnotationTypes.entity;
  // const Mem.json({this.as, this.withFreezed, this.extendsBaseClass}) : type = AnnotationTypes.json;
  // const Mem.api({this.as, this.withFreezed, this.extendsBaseClass}) : type = AnnotationTypes.api;
}
