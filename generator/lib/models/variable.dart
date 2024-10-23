import 'package:analyzer/dart/element/type.dart';

class Variable {
  final String name;
  final String? typeString;
  final DartType? type;
  final bool? isCoreType;
  final bool? isNullable;
  final bool? isFinal;
  final bool? hasRequired;
  final bool? isList;
  final bool? isEnum;

  Variable({
    required this.name,
    this.type,
    this.typeString,
    this.isCoreType,
    this.isNullable,
    this.isFinal,
    this.hasRequired,
    this.isList,
    this.isEnum,
  });
}