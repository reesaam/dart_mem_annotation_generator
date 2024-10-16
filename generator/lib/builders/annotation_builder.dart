import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:dart_mem_annotation/annotation.dart';
import 'package:dart_mem_annotation_generator/components/add_class.dart';
import 'package:dart_mem_annotation_generator/components/add_mapper.dart';
import 'package:dart_mem_annotation_generator/models/variable.dart';
import 'package:source_gen/source_gen.dart';

import '../extensions/string.dart';
import '../extensions/annotation_type.dart';
import '../extensions/constant_reader.dart';
import '../models/extracted_info_model.dart';
import '../resources/enums.dart';
import '../components/log.dart';
import '../resources/strings.dart';
import 'code_generator.dart';

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

    // Extracting Data from all Elements and filling the data into a model to use everywhere
    ExtractedInfoModel dataModel = ExtractedInfoModel(
      element: element,
      source: element.source?.uri.path ?? Strings.unknown,
      type: element.metadata.first.element?.name?.getAnnotationType ?? AnnotationTypes.unknown,
      name: element.name ?? Strings.unknown,
      as: annotation.getAs,
    );
    // dataModel.logData();

    // Logging details about founded Annotation
    GeneratorLog.info(title: 'Annotation Found in', data: dataModel.source);
    GeneratorLog.info(title: 'Annotation Name', data: dataModel.name, as: dataModel.as);
    GeneratorLog.info(title: 'Annotation Type', data: dataModel.type);
    GeneratorLog.space();

    // Adding the Element in the main Generator
    // CodeGenerator().addElement(dataModel);

    String code = '';

    // code += 'part of \'sample_class.dart\';\n';
    // code += 'part of \'sample_class.mem.g.dart\';\n';

    code = code.addCommentLine('DataModel:');
    code = code.addCommentLine('element: ${dataModel.element.name}');
    code = code.addCommentLine('declaration: ${dataModel.element.declaration?.name}');
    code = code.addCommentLine('source: ${dataModel.source}');
    code = code.addCommentLine('type: ${dataModel.type.name}');
    code = code.addCommentLine('name: ${dataModel.name}');
    code = code.addCommentLine('as: ${dataModel.as}');
    code = code.addCommentLine('children: ${dataModel.element.children}');

    code = code.addCommentLine('name:  ${element.children[0].name}');
    code = code.addCommentLine('declaration:  ${element.children[0].declaration}');
    code = code.addCommentLine('declaration.check:  ${element.children[0].declaration?.toString().split(' ').first}');
    code = code.addCommentLine('kind:  ${element.children[0].kind}');
    code = code.addCommentLine('shortName:  ${element.children[0].source?.shortName}');
    code = code.addCommentLine('fullName:  ${element.children[0].source?.fullName}');
    code = code.addCommentLine('check:  ${element.children[0]}');
    for(var item in element.children) {
      code = code.addCommentLine('variable: ${item.name} / ${item.declaration} / ${item.kind}');
    }

    // code = code.addCommentLine('metadata:');
    // for (var item in element.metadata) {
    //   code = code.addCommentLine(item.element?.displayName ?? '');
    //   code = code.addCommentLine(item.element?.library?.name ?? '');
    //   code = code.addCommentLine(item.element?.library?.displayName ?? '');
    //   code = code.addCommentLine(item.element?.library?.parts.toString()?? '');
    //   code = code.addCommentLine(item.element?.session?.declaredVariables.variableNames.toString() ?? '');
    //   code = code.addCommentLine(item.element?.kind.displayName ?? '');
    //   code = code.addCommentLine(item.element?.kind.name ?? '');
    //   code = code.addCommentLine(item.element?.name ?? '');
    //   code = code.addCommentLine(item.element?.name ?? '');
    //   code = code.addCommentLine(item.element?.children.toString() ?? '');
    //   code = code.addCommentLine(item.element?.source?.fullName ?? '');
    // }

    String className = element.name ?? 'UnnamedClass';
    List<Variable> variablesList = List<Variable>.empty(growable: true);
    code = code.addCommentLine('Children Counter: ${element.children.length.toString()}');
    for(var item in element.children.where((element) => element.kind == ElementKind.FIELD)) {
      Variable variable = Variable(name: item.name ?? 'UnnamedVariable', type: item.declaration?.toString().split(' ').first);
      variablesList.add(variable);
    }

    code += AddClass().generate(className: className, variablesList: variablesList, type: AnnotationTypes.model);
    code += AddClass().generate(className: className, variablesList: variablesList, type: AnnotationTypes.entity);
    // code += AddMapper().generate(className: className, variablesList: variablesList);


    return code;
  }
}


