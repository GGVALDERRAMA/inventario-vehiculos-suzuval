import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    // WORKAROUND FIX: Pre-initialize window and rootViewController to prevent 
    // force-unwrap crash in flutter_barcode_scanner's register(with:) method
    if self.window == nil {
        self.window = UIWindow(frame: UIScreen.main.bounds)
    }
    if self.window?.rootViewController == nil {
        self.window?.rootViewController = FlutterViewController(project: nil, initialRoute: nil, nibName: nil, bundle: nil)
    }
    self.window?.makeKeyAndVisible()

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
