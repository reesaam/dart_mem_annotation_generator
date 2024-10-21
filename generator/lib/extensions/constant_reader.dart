import 'package:source_gen/source_gen.dart';

extension GetData on ConstantReader {
  String? get getName => revive().accessor;
  String? get getAs => revive().namedArguments['as']?.toStringValue();
  bool? get getFreezed => revive().namedArguments['withFreezed']?.toBoolValue();
  bool? get getIsExtended => revive().namedArguments['extendsBaseClass']?.toBoolValue();
}
