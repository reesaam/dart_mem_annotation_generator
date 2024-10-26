import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import '../resources/types_library.dart';

extension GetData on DartType {

  bool get isCoreType => element?.library?.isDartCore == true || element?.kind == ElementKind.ENUM;

  bool get isEnum => element?.kind == ElementKind.ENUM;

  bool get isCoreTypeFromList {
    String newVar = this.toString();
    if (newVar.contains('?')) newVar = newVar.replaceAll('?', '');
    while (newVar.contains('List')) {
      newVar = newVar.replaceFirst('List', '').replaceFirst('<', '').replaceFirst('>', '');
    }
    for (var type in TypesLibrary.values) {
      if (type.value == newVar) return true;
    }
    return false;
  }
}
