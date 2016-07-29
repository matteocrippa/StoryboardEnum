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
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // setup window bounds
        window = UIWindow(frame:UIScreen.mainScreen().bounds)
        
        // show the main storyboard
        Storyboard.Main.show()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {}

    func applicationDidEnterBackground(application: UIApplication) {}

    func applicationWillEnterForeground(application: UIApplication) {}

    func applicationDidBecomeActive(application: UIApplication) {}

    func applicationWillTerminate(application: UIApplication) {}

}
