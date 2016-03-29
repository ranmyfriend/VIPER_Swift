//
//  VSSplashScreenNavigation.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSSplashScreenNavigation: NSObject,VSSplashScreenNavigationProtocol {

    var window: UIWindow?
    
    override init() {}
    
    func presentSplashScreenViewControllerInWindow() {
        let splashScreenViewController = self.createSpalshViewController()
        splashScreenViewController.navigation = self
        if (self.window == nil) {
            self.window = UIApplication.sharedApplication().keyWindow
        }
        self.window!.rootViewController = splashScreenViewController
        self.window!.makeKeyAndVisible()
    }
    
    func presentLoginViewController() {
        let loginViewController = UIStoryboard.init(name: "Login", bundle: nil).instantiateViewControllerWithIdentifier("VSLoginViewController") as? VSLoginViewController
        loginViewController!.logic = VSLoginLogic()
        loginViewController!.logic!.view = loginViewController
        loginViewController!.navigation = VSLoginNavigation()
        loginViewController!.navigation!.loginViewController = loginViewController
        self.window?.rootViewController!.presentViewController(loginViewController!, animated: true, completion: nil)
    }
    
    func presentSignupViewController() {
        let signupViewController = UIStoryboard.init(name: "Signup", bundle: nil).instantiateViewControllerWithIdentifier("VSSignupViewController") as? VSSignupViewController
        signupViewController!.logic = VSSignupLogic()
        signupViewController!.logic!.view = signupViewController
        signupViewController!.navigation = VSSignupNavigation()
        signupViewController!.navigation!.signupViewController = signupViewController
        self.window?.rootViewController!.presentViewController(signupViewController!, animated: true, completion: nil)
    }
    
    private func createSpalshViewController() ->VSSplashScreenViewController {
        return UIStoryboard.init(name: "SplashScreen", bundle: nil).instantiateViewControllerWithIdentifier("VSSplashScreenViewController") as! VSSplashScreenViewController
    }
}
