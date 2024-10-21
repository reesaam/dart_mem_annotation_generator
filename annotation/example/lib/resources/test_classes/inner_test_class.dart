import 'package:freezed_annotation/freezed_annotation.dart';

part 'inner_test_class.freezed.dart';
part 'inner_test_class.g.dart';

@freezed
class Test with _$Test {
  const factory Test({
    final String? name,
    final String? description,
  }) = _Test;
  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}
