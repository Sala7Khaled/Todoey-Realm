//
//  AppDelegate.swift
//  Todoey-Realm
//
//  Created by Salah Khaled on 4/22/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        do {
            let _ = try Realm()
        } catch {
            print("Error installing Realm: \(error)")
        }
        
        return true
    }

}

