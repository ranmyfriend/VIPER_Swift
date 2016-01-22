//
//  VSHomeNavigation.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

class VSHomeNavigation: NSObject {
    var window: UIWindow?
    var splashScreenNavigation: VSSplashScreenNavigation?
    var homeViewController :VSHomeViewController?

    func presentHomeViewControllerInWindow() {
        let homeViewController = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewControllerWithIdentifier("VSHomeViewController") as? VSHomeViewController
        self.homeViewController = homeViewController
        self.homeViewController!.navigation = self
        self.homeViewController!.logic = VSHomeLogic()
        self.window?.rootViewController = homeViewController
        self.window?.makeKeyAndVisible()
    }
    func dismissHomeViewController() {
        self.homeViewController!.dismissViewControllerAnimated(false, completion: nil)
        self.splashScreenNavigation = VSSplashScreenNavigation.sharedInstance
        self.splashScreenNavigation!.presentSplashScreenViewControllerInWindow()
    }
}
