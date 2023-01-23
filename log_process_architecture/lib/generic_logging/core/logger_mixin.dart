// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:log_process_architecture/generic_logging/core/project_logger.dart';

mixin LoggerMixin<T extends StatefulWidget> on State<T> {
  PageSpecialKeys get key;
  CustomModel get customModel;
  void init();

  @override
  void initState() {
    super.initState();
    ProjectCustomLogger.instance.logClassName(this);
    ProjectCustomLogger.instance.logPageName(key);
    ProjectCustomLogger.instance.logCustomModel(customModel);
    init();
  }
}

enum PageSpecialKeys { home, detail }

class CustomModel {
  final String? id;
  final String? description;

  CustomModel({this.id, this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'description': description,
    };
  }

  factory CustomModel.fromMap(Map<String, dynamic> map) {
    return CustomModel(
      id: map['id'] != null ? map['id'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomModel.fromJson(String source) =>
      CustomModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
