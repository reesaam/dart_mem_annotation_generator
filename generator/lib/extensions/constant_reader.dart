import 'package:source_gen/source_gen.dart';

/// [ConstantReader] is a very important part of code-generation and we need to get some data and some changes to get the code generated in the best way
extension GetData on ConstantReader {
  String? get getName => revive().accessor;
  String? get getAs => revive().namedArguments['as']?.toStringValue();
  bool? get getAbstract => revive().accessor.contains('abstract');
  bool? get getFreezed => revive().namedArguments['withFreezed']?.toBoolValue();
  bool? get getIsExtended => revive().namedArguments['extendsBaseClass']?.toBoolValue();
}
