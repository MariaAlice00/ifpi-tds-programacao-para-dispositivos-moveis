import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIkey("AIzaSyCvAFXS6WFfXlv-3MyBvfYLlupCxCDw1Ec")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
