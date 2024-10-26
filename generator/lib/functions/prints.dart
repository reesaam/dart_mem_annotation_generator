import 'package:analyzer/dart/element/type.dart';
import 'package:dart_mem_annotation_generator/models/variable.dart';

import '../components/log.dart';
import 'add_code.dart';

/// This class has some standard function to print data and information in the terminal
/// it mostly use in the development, pass it
class Prints {
  static String variablesList(List<Variable> variables) {
    GeneratorLog.info(title: 'Class generation Commenting');
    String print = AddCode.addCommentLine('Variables List:');
    for (Variable variable in variables) {
      print += AddCode.addCommentLine('  ${variable.name}:');
      print += AddCode.addCommentLine('==>    typeString: ${variable.typeString}');
      print += AddCode.addCommentLine('==>    type: ${variable.type}');
      print += AddCode.addCommentLine('==>    isCoreType: ${variable.isCoreType}');
      print += AddCode.addCommentLine('==>    isNullable: ${variable.isNullable}');
      print += AddCode.addCommentLine('==>    isFinal: ${variable.isFinal}');
      print += AddCode.addCommentLine('==>    hasRequired: ${variable.hasRequired}');
      print += AddCode.addCommentLine('==>    isEnum: ${variable.isEnum}');
    }
    return print;
  }

  static String dartTypeInfo(DartType dartType) {
    String print = AddCode.addCommentLine('DartType:');
    print += AddCode.addCommentLine('==>    Name: ${dartType.element?.displayName}');
    print += AddCode.addCommentLine('==>    Kind: ${dartType.element?.kind.name}');
    return print;
  }
}
