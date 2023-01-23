import 'dart:io';
import 'platform_show.dart';

PlatformShow get createAdapter => TextShow();

class TextShow extends PlatformShow {
  @override
  String platformName({bool first_value = false}) {
    return "${HttpStatus.accepted} $first_value";
  }
}
