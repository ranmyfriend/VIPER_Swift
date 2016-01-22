//
//  VSDataStoreProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

@objc protocol VSDataStoreProtocol {
    func createUser(userModel :VSUserModel) ->Bool
    func checkUserAvailablity() ->Bool
    func loginUser(userModel :VSUserModel) ->Bool
    func logoutUser()
}