import 'package:flutter/material.dart';
import 'package:log_process_architecture/generic_logging/generic_home_view.dart';

import 'platform/platform_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: GenericHomeView());
  }
}
