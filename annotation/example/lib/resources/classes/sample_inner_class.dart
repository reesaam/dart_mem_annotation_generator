import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

part 'sample_inner_class.mem.dart';
// part 'sample_inner_class.g.dart';
part 'sample_inner_class.freezed.dart';
// part 'sample_inner_class.g.dart';

@Mem.all(withFreezed: true)
class InnerSample {
  const InnerSample({this.name, this.description});
  final String? name;
  final String? description;
}