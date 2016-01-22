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
    
    let splashScreenNavigation: VSSplashScreenNavigation?
    var homeNavigation: VSHomeNavigation?
    
    override init() {
        self.splashScreenNavigation = VSSplashScreenNavigation.sharedInstance
//        self.homeNavigation = VSHomeNavigation.sharedInstance
    }
    
    // Findout here, Why can't i use UIApplication as Parameter.
    func application(didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?, window: UIWindow) -> Bool {
        self.splashScreenNavigation?.window = window
        self.homeNavigation = VSHomeNavigation()
//        self.homeNavigation = VSHomeNavigation.sharedInstance
        self.homeNavigation?.window = window
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
