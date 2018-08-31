//
//  AppDelegate.swift
//  Demo
//
//  Created by Yosuke Ishikawa on 2018/08/28.
//  Copyright © 2018年 Yosuke Ishikawa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = VenueDetailViewController.makeInstance()
        window?.makeKeyAndVisible()
        
        return true
    }
}
