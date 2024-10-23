import 'package:analyzer/dart/element/type.dart';
import 'package:dart_mem_annotation_generator/models/variable.dart';

extension CopyWith on Variable {
  Variable copyWith({
    String? name,
    String? typeString,
    DartType? type,
    bool? isCoreType,
    bool? isNullable,
    bool? isFinal,
    bool? hasRequired,
    bool? isList,
    bool? isEnum,
  }) =>
      Variable(
        name: name ?? this.name,
        typeString: typeString ?? this.typeString,
        type: type ?? this.type,
        isCoreType: isCoreType ?? this.isCoreType,
        isNullable: isNullable ?? this.isNullable,
        isFinal: isFinal ?? this.isFinal,
        hasRequired: hasRequired ?? this.hasRequired,
        isList: isList ?? this.isList,
        isEnum: isEnum ?? this.isEnum,
      );
}
