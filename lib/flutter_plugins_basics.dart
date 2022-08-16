
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginsBasics {
  static const MethodChannel _channel = MethodChannel('flutter_plugins_basics');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
