import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:source_gen/source_gen.dart';

import 'builders/annotation_builder.dart';
import 'builders/code_generator.dart';
import 'resources/constants.dart';

Builder annotationBuilder(BuilderOptions options) => PartBuilder(
      [AnnotationBuilder()],
      generatedFilesPrefixForBuilder,
      formatOutput: (code) => DartFormatter().format(code),
      options: options,
    );

// Builder annotationBuilder(BuilderOptions options) => SharedPartBuilder(
//   [AnnotationBuilder()],
//   generatedFilesPrefixForBuilder,
//   formatOutput: (code) => DartFormatter().format(code),
// );

Builder codeGenerator(BuilderOptions options) => LibraryBuilder(
      CodeGenerator(),
      generatedExtension: generatedFilesPrefixForGenerator,
      formatOutput: (code) => DartFormatter().format(code),
      options: options,
    );
