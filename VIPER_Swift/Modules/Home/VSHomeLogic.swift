//
//  VSHomeLogic.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSHomeLogic: NSObject,VSHomeLogicProtocol {

    func logoutUser() {
        VSDataStore.defaultLocalDB.logoutUser()
    }
}
