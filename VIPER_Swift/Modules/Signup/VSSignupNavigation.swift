//
//  VSSignupNavigation.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSSignupNavigation: NSObject,VSSignupNavigationProtocol {

    var signupViewController :VSSignupViewController?
    
    func dismissSignupViewController() {
        self.signupViewController!.dismissViewControllerAnimated(false, completion: nil)
    }
    
    func presentHomeScreen() {
        let homeViewController = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewControllerWithIdentifier("VSHomeViewController") as? VSHomeViewController
        homeViewController?.navigation = VSHomeNavigation()
        homeViewController?.navigation?.homeViewController = homeViewController
        self.signupViewController!.presentViewController(homeViewController!, animated: false, completion: nil)
    }
    
}
