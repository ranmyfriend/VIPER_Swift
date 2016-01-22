//
//  VSLoginNavigation.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

class VSLoginNavigation: NSObject,VSLoginNavigationProtocol {
    
    var loginViewController :VSLoginViewController?
    
    func dismissLoginViewController() {
        self.loginViewController!.dismissViewControllerAnimated(false, completion: nil)
    }
    
    func presentHomeScreen() {
        let homeViewController = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewControllerWithIdentifier("VSHomeViewController") as? VSHomeViewController
        homeViewController?.navigation = VSHomeNavigation()
        homeViewController?.navigation?.homeViewController = homeViewController
        self.loginViewController!.presentViewController(homeViewController!, animated: false, completion: nil)
    }
}
