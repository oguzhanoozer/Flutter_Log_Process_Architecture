import 'dart:developer';

import 'package:log_process_architecture/generic_logging/core/logger_mixin.dart';

class ProjectCustomLogger {
  static ProjectCustomLogger? _instance;
  static ProjectCustomLogger get instance {
    _instance ??= ProjectCustomLogger._init();
    return _instance!;
  }

  ProjectCustomLogger._init();

  void logClassName<T>(T page) {
    log(page.toString());
  }

  void logPageName(PageSpecialKeys key) {
    log(key.name.toString());
  }

  void logCustomModel(CustomModel customModel) {
    log(customModel.toJson());
  }
}
