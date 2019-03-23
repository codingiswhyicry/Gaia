//
//  AppDelegate.swift
//  tester
//
//  Created by Amanda Southworth on 3/22/19.
//  Copyright © 2019 Astra Labs. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = self.window {
            
            window.rootViewController = pageVC()
            window.makeKeyAndVisible()
        }
        
        return true
    }
}

