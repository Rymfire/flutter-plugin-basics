import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterPluginsBasics {
  static const MethodChannel _channel = MethodChannel('flutter_plugins_basics');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// [generateColor] is an async getter that will call a native channel
  /// (connection to a native method) and will returns its value.
  /// Use [invokeChannel] method on [_channel] to do so.
  static Future<Color> get generateColor async {
    final List randomColorArray = await _channel.invokeMethod('generateColor');
    return Color.fromRGBO(
        randomColorArray[0], randomColorArray[1], randomColorArray[2], 1.0);
  }
}
