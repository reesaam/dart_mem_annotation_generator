import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_mem_annotation/dart_mem_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main.mem.dart';
part 'main.freezed.dart';
part 'main.g.dart';

void main() {
  runApp(const MainApp());
}

enum SampleEnum {
  isEnum,
  notEnum,
}

@Mem.all()
abstract class Sample {
  SampleEnum? sampleEnum;
  String? name;
  String? description;
  InnerSample? innerClass;
  List<String>? sampleList;
  List<InnerSample>? innerSampleList;
}

@Mem.all(withFreezed: true)
abstract class InnerSample {
  const InnerSample({this.name, this.description});
  final String? name;
  final String? description;
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Name',
    );
  }
}
