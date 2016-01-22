//
//  VSDataStore.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

class VSDataStore:NSObject {

    // Need to refer. How to Invoke class Methods inside classMethod
    class var defaultLocalDB: VSCoreDataEngine {
        return VSCoreDataEngine.sharedInstance
    }

}