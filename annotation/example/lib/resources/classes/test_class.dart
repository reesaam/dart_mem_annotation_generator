import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/annotation.dart';

import 'sample_inner_class.dart';

part 'test_class.mem.dart';
// part 'test_class.mem.g.dart';
part 'test_class.freezed.dart';
// part 'test_class.g.dart';

// // @Freezed(toJson: false, fromJson: false)
// @Mem.entity()
// class SampleEntity with _$SampleEntity {
//   const factory SampleEntity({
//     final String? name,
//     final String? description,
//     final SampleInnerEntity? innerModel,
//   }) = _SampleEntity;
// }

@Mem.all()
class Test {
  const Test({this.name, this.description, this.innerClass, this.innerClass2});
  final String? name;
  final String? description;
  final InnerTest? innerClass;
  final InnerTest? innerClass2;

  // factory Test.model() => TestModel();
  // factory Test.entity() => TestEntity();
}

@Mem.all()
class InnerTest {
  const InnerTest({this.name, this.description});
  final String? name;
  final String? description;
}