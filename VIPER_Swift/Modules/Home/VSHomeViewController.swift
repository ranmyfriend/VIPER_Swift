//
//  VSHomeViewController.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSHomeViewController: UIViewController {
    
    var navigation: VSHomeNavigationProtocol?
    var logic: VSHomeLogicProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapLogoutButton(sender: AnyObject) {
        self.navigation?.dismissHomeViewController()
    }
    
}
