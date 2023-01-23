import 'package:flutter/material.dart';

import 'core/logger_mixin.dart';

class GenericHomeViewDetail extends StatefulWidget {
  const GenericHomeViewDetail({super.key, required this.id});

  final int id;

  @override
  State<GenericHomeViewDetail> createState() => _GenericHomeViewDetailState();
}

class _GenericHomeViewDetailState extends State<GenericHomeViewDetail>
    with LoggerMixin {
  @override
  void init() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("${widget.id}")),
    );
  }

  @override
  PageSpecialKeys key = PageSpecialKeys.detail;

  @override
  CustomModel get customModel =>
      CustomModel(id: "${widget.id}", description: "Detail View Page");
}
