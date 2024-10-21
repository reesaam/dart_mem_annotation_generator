import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:dart_mem_annotation/annotation.dart';
import 'package:dart_mem_annotation_generator/components/log.dart';
import 'package:dart_mem_annotation_generator/extensions/constant_reader.dart';
import 'package:dart_mem_annotation_generator/extensions/dart_type.dart';
import 'package:dart_mem_annotation_generator/functions/prints.dart';
import 'package:source_gen/source_gen.dart';

import '../components/add_class.dart';
import '../components/add_mapper.dart';
import '../functions/add_code.dart';
import '../models/variable.dart';
import '../resources/enums.dart';

/// This class will find the Annotation, Extract Data then Fill it in the Model to pass to the main generator class to generate the Code
///
/// The DataModel includes the source element itself and extracted useful data that we know will use them a lot
/// so, those useful data seperated and assigned a specific field for them
/// we would not process the demanded data everytime
///
/// Logs will notify that an annotation has founded, then it will show details about that

class AnnotationBuilder extends GeneratorForAnnotation<Mem> {
  @override
  FutureOr<String> generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) async {
    GeneratorLog.info(title: 'Annotation Found', data: annotation.getName);
    GeneratorLog.info(title: 'Code Generation for Annotation Started');

    String code = '';

    GeneratorLog.info(title: 'Commenting Started');
    // code += AddCode.addCommentLine('name:  ${element.children[0].name}');
    // code += AddCode.addCommentLine('declaration:  ${element.children[0].declaration}');
    // code += AddCode.addCommentLine('declaration.check:  ${element.children[0].declaration?.toString().split(' ').first}');
    // code += AddCode.addCommentLine('kind:  ${element.children[0].kind}');
    // code += AddCode.addCommentLine('shortName:  ${element.children[0].source?.shortName}');
    // code += AddCode.addCommentLine('fullName:  ${element.children[0].source?.fullName}');
    // code += AddCode.addCommentLine('check:  ${element.children[0]}');
    for (var item in element.children) {
      // code += AddCode.addCommentLine('variable: ${item.name} / ${item.declaration} / ${item.kind}');
      //   var visitor = ElementVisitor();
      //   element.visitChildren(visitor);
      //   var key = visitor.fields.keys.first;
      //   var val = visitor.fields[visitor.fields.keys.first];
      //   var e1 = visitor.fields.values.first;
      //   var e2 = element.children.where((e) => e.kind == ElementKind.FIELD).first;
      //   // code += AddCode.addCommentLine('Enum Compare: ${visitor.names.values.firstWhere((e) => e == item.name)}');
    }
    // code = code.addCommentLine('\n\n');

    // code += AddCode.addCommentLine(element.displayName ?? '');
    // code += AddCode.addCommentLine(element.kind.displayName);
    // code += AddCode.addCommentLine(element.declaration.toString());
    //
    // code += AddCode.addCommentLine('metadata:');
    // for (var item in element.metadata) {
    //   code += AddCode.addCommentLine(element.metadata.indexOf(item).toString() ?? '');
    //   code += AddCode.addCommentLine(item.element?.displayName ?? '');
    //   code += AddCode.addCommentLine(item.element?.library?.name ?? '');
    //   code += AddCode.addCommentLine(item.element?.library?.displayName ?? '');
    //   code += AddCode.addCommentLine(item.element?.library?.parts.toString()?? '');
    //   code += AddCode.addCommentLine(item.element?.session?.declaredVariables.variableNames.toString() ?? '');
    //   code += AddCode.addCommentLine(item.element?.kind.displayName ?? '');
    //   code += AddCode.addCommentLine(item.element?.kind.name ?? '');
    //   code += AddCode.addCommentLine(item.element?.name ?? '');
    //   code += AddCode.addCommentLine(item.element?.name ?? '');
    //   code += AddCode.addCommentLine(item.element?.children.toString() ?? '');
    //   code += AddCode.addCommentLine(item.element?.source?.fullName ?? '');
    // }

    GeneratorLog.info(title: 'Main Code Generation Started...');
    String className = element.name ?? 'UnnamedClass';
    List<Variable> variablesList = List<Variable>.empty(growable: true);
    GeneratorLog.info(title: 'ElementVisitor Started');
    ElementVisitor visitor = ElementVisitor();
    element.visitChildren(visitor);
    GeneratorLog.info(title: 'Add Fields to List');
    List<Element> fields = element.children.where((child) => child.kind == ElementKind.FIELD).toList();
    List<Element> constructors = element.children.where((child) => child.kind == ElementKind.CONSTRUCTOR).toList();

    for (var item in fields) {
      GeneratorLog.info(title: 'Check DartType');
      DartType? selectedVisitorField = _selectVisitorFieldDartType(visitor: visitor, item: item);
      // code += selectedVisitorField == null ? '' : Prints.dartTypeInfo(selectedVisitorField);

      GeneratorLog.info(title: 'Setting Variable');
      Variable variable = Variable(
        name: item.name ?? 'UnnamedVariable',
        type: selectedVisitorField?.getType,
        typeString: item.declaration?.toString().split(' ').first,
        isCoreType: selectedVisitorField?.isCoreType,
        isFinal: item.declaration.toString().contains('final'),
        hasRequired: constructors.first.children.firstWhere((e) => e.name == item.name).declaration.toString().contains('required '),
        isNullable: item.declaration?.toString().split(' ').first.contains('?'),
        isEnum: selectedVisitorField?.isEnum,
      );
      variablesList.add(variable);
    }

    GeneratorLog.info(title: 'Generating Model Class...');
    code += AddClass().generate(
      className: className,
      variablesList: variablesList,
      annotationType: AnnotationTypes.model,
      freezed: annotation.getFreezed,
      extended: annotation.getIsExtended,
    );
    GeneratorLog.info(title: 'Generating Entity Class...');
    code += AddClass().generate(
      className: className,
      variablesList: variablesList,
      annotationType: AnnotationTypes.entity,
      freezed: annotation.getFreezed,
      extended: annotation.getIsExtended,
    );
    GeneratorLog.info(title: 'Generating Mapper Class...');
    code += AddMapper().generate(name: className, variablesList: variablesList);

    GeneratorLog.info(title: 'Returning Code');
    return code;
  }
}

DartType? _selectVisitorFieldDartType({required ElementVisitor visitor, required Element item}) => visitor.fields[visitor.fields.keys.firstWhere((e) => e == item.name)];

class ElementVisitor extends SimpleElementVisitor {
  Map<String, DartType> fields = {};

  @override
  visitFieldElement(FieldElement element) => fields[element.name] = element.type;
}
