//
//  VSSignupNavigationProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

protocol VSSignupNavigationProtocol {
    var signupViewController :VSSignupViewController?{get set}
    func dismissSignupViewController()
    func presentHomeScreen()
}
