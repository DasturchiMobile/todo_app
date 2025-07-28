import UIKit
import Flutter
import WidgetKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController

    let channel = FlutterMethodChannel(name: "uz.mobildasturchi.todoApp/statuses", binaryMessenger: controller.binaryMessenger)

    channel.setMethodCallHandler({ (call: FlutterMethodCall, result: FlutterResult) in
      if call.method == "statuses" {
        guard let args = call.arguments as? [String: Any],
              let all = args["all"] as? Int,
              let todo = args["todo"] as? Int,
              let done = args["done"] as? Int else {
          result(FlutterError(code: "INVALID_ARGS", message: "Arguments are invalid", details: call.arguments))
          return
        }

        guard let defaults = UserDefaults(suiteName: "group.uz.mobildasturchi.todoApp") else {
          result(FlutterError(code: "APP_GROUP_ERROR", message: "App Group not configured", details: nil))
          return
        }

        let stats: [String: Int] = ["all": all, "todo": todo, "done": done]
        defaults.set(stats, forKey: "todo_stats")

        DispatchQueue.main.async {
          WidgetCenter.shared.reloadAllTimelines()
        }
        result("success response")
      } else {
        result(FlutterMethodNotImplemented)
      }
    })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
