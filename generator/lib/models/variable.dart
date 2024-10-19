class Variable {
  final String name;
  final String? typeString;
  final Type? type;
  final bool? isCoreType;
  final bool? isNullable;
  final bool? isFinal;
  final bool? isEnum;

  Variable({
    required this.name,
    this.type,
    this.typeString,
    this.isCoreType,
    this.isNullable,
    this.isFinal,
    this.isEnum,
  });
}