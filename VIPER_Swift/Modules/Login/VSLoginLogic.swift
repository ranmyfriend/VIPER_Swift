//
//  VSLoginLogic.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

class VSLoginLogic: NSObject,VSLoginLogicProtocol {

    var view :VSLoginViewController?
    
    func loginUserWithModel(userModel: VSUserModel) {
        self.view?.loggedInIntimation(VSDataStore.defaultLocalDB.loginUser(userModel))
    }
    
}
