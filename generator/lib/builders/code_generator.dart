import 'dart:async';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';
import '../components/log.dart';

class CodeGenerator extends Generator {

  /// List Variables to keep the data and then we will use them when generating the code
  /// This way everything, especially generating the code do so much faster and more efficient
  static Set<String> importsList = Set<String>.new();

  @override
  FutureOr<String?> generate(LibraryReader library, BuildStep buildStep) async {
    GeneratorLog.warning(title: 'name', data: library.element.source.shortName);
    bool canRun = true;

    if (canRun) {
      GeneratorLog(title: 'Code Generation Started...');

      /// String Variables:
      /// These variables will keep strings of generated code separately
      /// [statisticsCodeBody] the package will generate some statistics about received code which will put at the top of generated code
      /// [importsCodeBody] this is the [import] section, all the demanded imports will gather, save and finally generate here
      /// [classesCodeBody] we have a section for store and generate pages which we should represent to [GetX] separately
      ///
      /// then we can have them in different parts, at first step it will so much easier to debug and find every problem
      /// which occurred and generated by every part of the code
      /// at the end, all of them will merge in a unified string for pass to the generating the file
      /// the only variable that could assume different is [mainCodeBody] which will keep the final merged code

      // String statisticsCodeBody = Strings.empty;
      // String importsCodeBody = Strings.empty;
      // String classesCodeBody = Strings.empty;
      // String mainCodeBody = Strings.empty;
      //
      // /// Imports
      // for (var import in importsList) {
      //   importsCodeBody = importsCodeBody.addImport(import);
      // }
      //
      // ///Statistics
      // statisticsCodeBody = statisticsCodeBody.addCommentLine('Generated Library Statistics:');
      // statisticsCodeBody = statisticsCodeBody.addCommentLine('  Imports Count: ${importsList.length}');
      //
      // /// CodeBody Generation
      // mainCodeBody = mainCodeBody.addLine('library;').addSpace();
      // mainCodeBody = mainCodeBody.addCommentLine(DescriptionGenerator().generate(all: true)).addSpace();
      // mainCodeBody = mainCodeBody.addLine(importsCodeBody).addSpace();
      // mainCodeBody = mainCodeBody.addLine(statisticsCodeBody).addSpace();

      GeneratorLog(title: 'Code Generation Finished...');

      String testCode = '/// ${library.element.source.shortName}\n/// ${library.element.source.fullName}\n\n';
      testCode += '/// ${library.annotatedWith(TypeChecker.fromRuntime(library.element.metadata.runtimeType))}\n';

      // testCode += 'part of \'${library.element.librarySource.shortName}\';\n';

      for (var e1 in library.allElements) {
        for (var e2 in e1.metadata) {
          testCode += '/// ${e2.element}\n';
        }
      }

      return null;
    }
    return null;
  }
}
