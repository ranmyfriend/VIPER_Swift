//
//  VSSignupLogicProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

protocol VSSignupLogicProtocol {
    var view :VSSignupViewController?{get set}
    func createUser(userModel :VSUserModel)
}