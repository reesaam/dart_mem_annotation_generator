class Variable {
  final String name;
  final String? type;
  final bool? isNullable;
  final bool? isFinal;

  Variable({
    required this.name,
    this.type,
    this.isNullable,
    this.isFinal,
  });
}