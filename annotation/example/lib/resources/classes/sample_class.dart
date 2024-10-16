import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

import 'sample_inner_class.dart';

part 'sample_class.mem.dart';
part 'sample_class.mem.g.dart';

@Mem()
class Sample {
  const Sample({this.name, this.description, this.innerClass});
  final String? name;
  final String? description;
  final InnerSample? innerClass;
}