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

    let channel = FlutterMethodChannel(name: "uz.mobildasturchi.todo_app/statuses",
                                       binaryMessenger: controller.binaryMessenger)

    channel.setMethodCallHandler({
      (call: FlutterMethodCall, result: FlutterResult) -> Void in

      if call.method == "statuses" {
        if let args = call.arguments as? [String: Any],
           let all = args["all"] as? Int,
           let todo = args["todo"] as? Int,
           let done = args["done"] as? Int {

          // ✅ UserDefaults (App Group bilan)
          let defaults = UserDefaults(suiteName: "group.uz.mobildasturchi.todo_app")
          let stats: [String: Int] = [
            "all": all,
            "todo": todo,
            "done": done
          ]
          defaults?.set(stats, forKey: "todo_stats")

          // ✅ Widgetni yangilash
          WidgetCenter.shared.reloadAllTimelines()

          result("success response")
        } else {
          result(FlutterError(code: "INVALID_ARGS", message: "arguments are invalid", details: nil))
        }
      } else {
        result(FlutterMethodNotImplemented)
      }
    })

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
