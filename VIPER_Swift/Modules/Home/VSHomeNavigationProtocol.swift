//
//  VSHomeNavigationProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

protocol VSHomeNavigationProtocol {
    var window:UIWindow? {get set}
    var homeViewController:VSHomeViewController? {get set}
    func presentHomeViewControllerInWindow()
    func dismissHomeViewController()
}