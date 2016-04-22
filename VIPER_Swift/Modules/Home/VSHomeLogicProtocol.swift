//
//  VSHomeLogicProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

protocol VSHomeLogicProtocol:class {
    var view:VSHomeViewProtocol? {get set}
    func logoutUser()
}