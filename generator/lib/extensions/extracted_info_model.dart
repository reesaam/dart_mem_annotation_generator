import 'package:dart_mem_annotation_generator/components/log.dart';

import '../models/extracted_info_model.dart';

extension PrintData on ExtractedInfoModel {
  logData() {
     GeneratorLog.info(title: 'name', data: name);
     GeneratorLog.info(title: 'as', data: as);
     GeneratorLog.info(title: 'element', data: element.name);
     GeneratorLog.info(title: 'source', data: source);
     GeneratorLog.info(title: 'type', data: type);
  }
}