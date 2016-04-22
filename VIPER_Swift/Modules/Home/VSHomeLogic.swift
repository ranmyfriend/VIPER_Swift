//
//  VSHomeLogic.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import UIKit

class VSHomeLogic: NSObject,VSHomeLogicProtocol {
    var view: VSHomeViewProtocol?
    func logoutUser() {
        view!.showBusyIndicator("Network Call started")
        VSDataStore.defaultLocalDB.logoutUser()
        view!.dismissBusyIndicator()
    }
}
