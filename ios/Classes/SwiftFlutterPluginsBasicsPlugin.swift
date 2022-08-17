import Flutter
import UIKit

public class SwiftFlutterPluginsBasicsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugins_basics", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginsBasicsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  /// [call.method] is the method called via the channel as a string
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
      break
    case "generateColor":
      result(generateColor())
      break
    default:
      result("Not Implemented")
      break
    }
  }

  private func generateColor() -> [Int] {
    return [0,0,0].map {
      (n) -> Int in
        return Int.random(in: 0 ..< 256)
    }
  }
}
