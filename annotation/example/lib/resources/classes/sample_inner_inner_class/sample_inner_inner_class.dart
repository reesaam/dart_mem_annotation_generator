import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sample_inner_inner_class.mem.dart';
part 'sample_inner_inner_class.freezed.dart';
part 'sample_inner_inner_class.g.dart';

@Mem.all(withFreezed: true)
class InnerInnerSample {
  const InnerInnerSample({this.name, this.description, this.longDescription});
  final String? name;
  final String? description;
  final String? longDescription;
}