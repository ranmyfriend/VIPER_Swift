//
//  VSCoreDataEngine.swift
//  VIPER_Swift
//
//  Created by ranjith on 19/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import CoreData

class VSCoreDataEngine:NSObject,VSDataStoreProtocol {
    
var moc = NSManagedObjectContext()

class var sharedInstance: VSCoreDataEngine {
    struct Static {
        static var onceToken: dispatch_once_t = 0
        static var instance: VSCoreDataEngine? = nil
    }
    
    dispatch_once(&Static.onceToken) {
        Static.instance = VSCoreDataEngine()
    }
    return Static.instance!
}

override init() {
    moc = VSCoreDataSharedInstance.sharedInstance.managedObjectContext
}


// Protocol Definition
    
    func createUser(userModel :VSUserModel) ->Bool {
        
        let entityDescription = NSEntityDescription.entityForName("User", inManagedObjectContext: moc)
        let user = User(entity:entityDescription!,insertIntoManagedObjectContext: moc)
        
        user.setValue(userModel.email, forKey: "email")
        user.setValue(userModel.password, forKey: "password")
        
        do {
            try moc.save()
//            print("-- User Got saved! --");
            return true
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
        return false
    }
    
    func checkUserAvailablity() ->Bool {
        let entityDescription = NSEntityDescription.entityForName("User", inManagedObjectContext: moc)
        let fetchRequest = NSFetchRequest()
        fetchRequest.entity = entityDescription
        
        do {
            let results = try moc.executeFetchRequest(fetchRequest)
            if(results.count==0) {
                print("\n\n\nDatabase got empty values")
                return false
            }
            else {
                return true
            }
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
        }
        return false
    }
    
    func loginUser(userModel :VSUserModel) ->Bool {
        let entityDescription = NSEntityDescription.entityForName("User", inManagedObjectContext: moc)
        let fetchRequest = NSFetchRequest()
        fetchRequest.predicate = NSPredicate(format: "%K==%@", "email",userModel.email)
        fetchRequest.entity = entityDescription
        
        do {
            let results = try moc.executeFetchRequest(fetchRequest)
            if(results.count==1) {
                return true
            }
            else {
                return false
            }
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
        }
        return false
    }
    
    func logoutUser() {
        let entityDescription = NSEntityDescription.entityForName("User", inManagedObjectContext: moc)
        let fetchRequest = NSFetchRequest()
        fetchRequest.entity = entityDescription
        
        do {
            let results = try moc.executeFetchRequest(fetchRequest)
            if (results.count==0) {
                print("There's no users to logout.!")
                return
            }
            let managedObject = results.first
            moc.deleteObject(managedObject as! User)
            try moc.save()
            print("user logged out!")
        } catch let error as NSError {
            print("could not delete \(error),\(error.userInfo)")
        }
    }
}