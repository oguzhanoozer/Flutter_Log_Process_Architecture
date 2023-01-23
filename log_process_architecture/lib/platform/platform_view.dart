import 'package:flutter/material.dart';
import 'platform_show.dart';
import 'text_show.dart' if (dart.library.html) 'text_show_web.dart' as show;

class PlatformView extends StatelessWidget {
  const PlatformView({super.key});

  @override
  Widget build(BuildContext context) {
    PlatformShow _platformShow = show.createAdapter;
    return Scaffold(
      body: Center(
        child: Text(_platformShow.platformName(first_value: true)),
      ),
    );
  }
}
