//
//  AppDelegate.swift
//  Color your life
//
//  Created by Maha AlDwehy on 06/01/1440 AH.
//  Copyright © 1440 Maha AlDwehy. All rights reserved.
//

import UIKit
import RealmSwift


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//        print(Realm.Configuration.defaultConfiguration.fileURL)
   
        do {
            _ = try Realm()

        } catch {
            print("Error init new Realm, \(error)")
        }
        return true
    }

    
    }



