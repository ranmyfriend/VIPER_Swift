//
//  VSLoginViewController.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

class VSLoginViewController: UIViewController,VSLoginViewProtocol {
    
    var logic :VSLoginLogic?
    var navigation :VSLoginNavigation?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginButton.layer.borderColor = UIColor .blackColor().CGColor
        self.loginButton.layer.borderWidth = 0.5
        
    }
    
    // Button Actions
    @IBAction func didTapLoginButton(sender: AnyObject) {
        var inputDictionary = [String:AnyObject]()
        inputDictionary["email"] = self.emailTextField.text
        inputDictionary["password"] = self.passwordTextField.text
        let userModel = VSUserModel(inputDictionary: inputDictionary)
        
        self.logic?.loginUserWithModel(userModel)
    }
    
    @IBAction func didTapDismissButton(sender: AnyObject) {
        self.navigation!.dismissLoginViewController()
    }

    // VSLoginViewProtocol Definitions
    func loggedInIntimation(isSaved :Bool) {
        if isSaved {
            print("Succes:User Logged")
            self.navigation!.presentHomeScreen()
        }
        else {
            print("Failure:User did not store")
        }
    }
}
