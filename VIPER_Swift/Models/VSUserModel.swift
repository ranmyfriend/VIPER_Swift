//
//  VSUserModel.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

class VSUserModel: NSObject {
    
    var inputDictionary = Dictionary<String,AnyObject>()
    
    convenience init(inputDictionary: Dictionary<String,AnyObject>) {
        self.init()
        self.inputDictionary = inputDictionary
    }
    
    var email : String {
        set(newEmail) {
            inputDictionary["email"] = newEmail
        }
        get {
            // MIND IT: The value is Kind of `AnyObject`
            return (inputDictionary["email"] as? String)!
        }
    }
    
    var password : String {
        set(newPassword) {
            inputDictionary["password"] = newPassword
        }
        get {
            return (inputDictionary["password"] as? String)!
        }
    }
    
}
