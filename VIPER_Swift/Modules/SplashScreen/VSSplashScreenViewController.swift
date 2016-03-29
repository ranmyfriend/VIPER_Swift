//
//  VSSplashScreenViewController.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSSplashScreenViewController: UIViewController {
        
    var navigation: VSSplashScreenNavigationProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Button Actions
    @IBAction func didTapSignupButton(sender: AnyObject) {
        self.navigation?.presentSignupViewController()
    }
    
    @IBAction func didTapLoginButton(sender: AnyObject) {
        self.navigation?.presentLoginViewController()
    }
}
