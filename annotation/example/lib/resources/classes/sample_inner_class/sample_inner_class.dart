import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../sample_inner_inner_class/sample_inner_inner_class.dart';

part 'sample_inner_class.mem.dart';
part 'sample_inner_class.freezed.dart';
part 'sample_inner_class.g.dart';

@Mem.all(withFreezed: true)
class InnerSample {
  const InnerSample({this.name, this.description, this.innerInnerSampleClass});
  final String? name;
  final String? description;
  final InnerInnerSample? innerInnerSampleClass;
}