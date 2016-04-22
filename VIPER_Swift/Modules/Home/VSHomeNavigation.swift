//
//  VSHomeNavigation.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

class VSHomeNavigation: NSObject,VSHomeNavigationProtocol {
    
    var window: UIWindow?
    
    var splashScreenNavigation: VSSplashScreenNavigationProtocol?
    var homeViewController :VSHomeViewController?

    func presentHomeViewControllerInWindow() {
        let homeViewController = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewControllerWithIdentifier("VSHomeViewController") as? VSHomeViewController
        self.homeViewController = homeViewController
        self.homeViewController!.navigation = self
        self.homeViewController!.logic = VSHomeLogic()
        self.homeViewController!.logic?.view = homeViewController
        window!.rootViewController = homeViewController
        window!.makeKeyAndVisible()
    }
    func dismissHomeViewController() {
        self.homeViewController!.dismissViewControllerAnimated(false, completion: nil)
        self.splashScreenNavigation = VSSplashScreenNavigation()
        self.splashScreenNavigation!.presentSplashScreenViewControllerInWindow()
    }
}
