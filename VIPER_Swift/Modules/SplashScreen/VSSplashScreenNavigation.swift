//
//  VSSplashScreenNavigation.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSSplashScreenNavigation: NSObject,VSSplashScreenNavigationProtocol {

    var splashScreenViewController: VSSplashScreenViewController?
    var window: UIWindow?
    
    class var sharedInstance: VSSplashScreenNavigation {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: VSSplashScreenNavigation? = nil
        }
        
        dispatch_once(&Static.onceToken) {
            Static.instance = VSSplashScreenNavigation()
        }
        return Static.instance!
    }
    
    override init() {}
    
    func presentSplashScreenViewControllerInWindow() {
        let splashScreenViewController = UIStoryboard.init(name: "SplashScreen", bundle: nil).instantiateViewControllerWithIdentifier("VSSplashScreenViewController") as? VSSplashScreenViewController
        self.splashScreenViewController = splashScreenViewController
        self.splashScreenViewController!.navigation = self
        self.window!.rootViewController = splashScreenViewController
        self.window!.makeKeyAndVisible()
    }
    
    func presentLoginViewController() {
        let loginViewController = UIStoryboard.init(name: "Login", bundle: nil).instantiateViewControllerWithIdentifier("VSLoginViewController") as? VSLoginViewController
        loginViewController!.logic = VSLoginLogic()
        loginViewController!.logic!.view = loginViewController
        loginViewController!.navigation = VSLoginNavigation()
        loginViewController!.navigation!.loginViewController = loginViewController
        self.splashScreenViewController?.presentViewController(loginViewController!, animated: true, completion: nil)
    }
    
    func presentSignupViewController() {
        let signupViewController = UIStoryboard.init(name: "Signup", bundle: nil).instantiateViewControllerWithIdentifier("VSSignupViewController") as? VSSignupViewController
        signupViewController!.logic = VSSignupLogic()
        signupViewController!.logic!.view = signupViewController
        signupViewController!.navigation = VSSignupNavigation()
        signupViewController!.navigation!.signupViewController = signupViewController
        self.splashScreenViewController?.presentViewController(signupViewController!, animated: true, completion: nil)
    }
}
