import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
      
      PigeonApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: MyAPI())
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

public class MyAPI: PigeonApi {
    func testMessage(fromFlutter: String) throws -> Response {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        if(emailPredicate.evaluate(with: fromFlutter)){
        return Response(response: "Email correct")
        }else{
        return Response(response: "Invalid email")
        }
    }
}
