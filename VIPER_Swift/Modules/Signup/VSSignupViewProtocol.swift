//
//  VSSignupViewProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

protocol VSSignupViewProtocol {
    func userCreationIntimation(isSaved :Bool)
    //indicators are helping user to observe what's going on the app
    func showBusyIndicator(message:String)
    func dismissBusyIndicator()
}