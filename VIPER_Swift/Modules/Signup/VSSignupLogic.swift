//
//  VSSignupLogic.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

class VSSignupLogic: NSObject,VSSignupLogicProtocol {

    var view :VSSignupViewProtocol?
    
    func createUser(userModel: VSUserModel) {
    self.view?.showBusyIndicator("Creating user")
    self.view?.userCreationIntimation(VSDataStore.defaultLocalDB.createUser(userModel))
    self.view?.dismissBusyIndicator()
    }
    
}
