import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:log_process_architecture/generic_logging/core/logger_mixin.dart';
import 'package:log_process_architecture/generic_logging/generic_home_view_detail.dart';
import 'package:log_process_architecture/platform/text_show.dart';

import '../platform/platform_show.dart';

class GenericHomeView extends StatefulWidget {
  const GenericHomeView({super.key});

  @override
  State<GenericHomeView> createState() => _GenericHomeViewState();
}

class _GenericHomeViewState extends State<GenericHomeView> with LoggerMixin {
  late PlatformShow platformShow;
  @override
  Future<void> init() async {
    platformShow = TextShow();

    await Future.delayed(Duration(seconds: 3));
    log(platformShow.platformName());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("$index"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GenericHomeViewDetail(
                          id: index,
                        )));
              },
            ),
          );
        },
      ),
    );
  }

  @override
  PageSpecialKeys key = PageSpecialKeys.home;

  @override
  CustomModel get customModel => CustomModel(description: "Home Page");
}
