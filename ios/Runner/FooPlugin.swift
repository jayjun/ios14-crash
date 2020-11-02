import UIKit
import Flutter

public class FooPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "foo", binaryMessenger: registrar.messenger())
        let plugin = FooPlugin()
        registrar.addMethodCallDelegate(plugin, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        result(true)
    }
}
