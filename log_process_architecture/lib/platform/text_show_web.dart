import 'dart:html';
import 'platform_show.dart';

PlatformShow get createAdapter => TextShowWeb();

class TextShowWeb extends PlatformShow {
  @override
  String platformName({bool first_value = false}) {
    return "${HttpStatus.accepted} $first_value";
  }
}
