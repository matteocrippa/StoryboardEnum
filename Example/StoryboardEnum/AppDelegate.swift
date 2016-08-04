//
//  AppDelegate.swift
//  StoryboardEnum
//
//  Created by Matteo on 07/24/2016.
//  Copyright (c) 2016 Matteo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // window var
    var window: UIWindow?

    // didFinishLaunchingWithOptions
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // setup window bounds
        window = UIWindow(frame:UIScreen.main.bounds)
        
        // show the main storyboard
        Storyboard.main.show(inNavigation: true)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}

}
