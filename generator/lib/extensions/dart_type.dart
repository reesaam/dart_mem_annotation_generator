import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

extension GetData on DartType {
  Type get getType => element.runtimeType;
  bool get isCoreType => element?.library?.isDartCore == true || element?.kind == ElementKind.ENUM;
  bool get isEnum => element?.kind == ElementKind.ENUM;
}