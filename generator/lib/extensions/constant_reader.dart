import 'package:source_gen/source_gen.dart';

extension GetData on ConstantReader {
  String? get getAs => revive().namedArguments['as']?.toStringValue();
}