//
//  VSHomeViewProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

protocol VSHomeViewProtocol:class {
    func showBusyIndicator(message:String)
    func dismissBusyIndicator()
}