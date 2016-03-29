//
//  VSViperSwiftApp.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

class VSViperSwiftApp:NSObject {
    var splashScreenNavigation: VSSplashScreenNavigationProtocol?
    var homeNavigation: VSHomeNavigationProtocol?
    
    override init() {}
    
    // Findout here, Why can't i use UIApplication as Parameter.
    func application(didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?, window: UIWindow) -> Bool {
        self.splashScreenNavigation = VSSplashScreenNavigation()
        window.frame = UIScreen.mainScreen().bounds
        self.splashScreenNavigation!.window = window
        self.homeNavigation = VSHomeNavigation()
        self.homeNavigation!.window = window
        self.pr_checkIfAnyUserPersistedOrNot()
        return true;
    }
    
    func pr_checkIfAnyUserPersistedOrNot() {
        if VSDataStore.defaultLocalDB.checkUserAvailablity() {
            // Home
            self.homeNavigation!.presentHomeViewControllerInWindow()
        }
        else {
            // Splash Screen
            self.splashScreenNavigation!.presentSplashScreenViewControllerInWindow()
        }
    }
    
}
