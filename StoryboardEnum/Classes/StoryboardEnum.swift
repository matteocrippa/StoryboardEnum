//
//  StoryboardEnum.swift
//
//
//  Created by Matteo Crippa on 7/21/16.
//  Copyright © 2016 boostco.de All rights reserved.
//

import UIKit

// MARK: - StoryboardVC
public struct StoryboardVC {
    
    // reference to current window
    public var window: UIWindow?
    
    // initter with window, this allow us to avoid to pass always the window
    public init(inWindow window: UIWindow?){
        self.window = window
    }
    
    // retrieves the vc from the storyboard with an identifier
    public func getVC(fromStoryboard name: String, withIdentifier identifier: String? = nil) -> UIViewController? {
        
        // retrieve storyboard according name
        let storyboard = UIStoryboard(name: name, bundle: NSBundle.mainBundle())
        
        // if an idientifier isset ask for that 
        if let idx = identifier {
            // return it
            return storyboard.instantiateViewControllerWithIdentifier(idx)
        }
        // otherwise initial view controller is used
        return storyboard.instantiateInitialViewController()
    }
    
}

// MARK: - Protocol
public protocol StoryboardEnum {
    var vc: UIViewController? { get }
    var story: StoryboardVC { get }
}

// MARK: - Extension
extension StoryboardEnum {
    // show the current vc
    public func show() {
        // try to retrieve current window
        guard let window = story.window else { return }
        // set vc as rootVc
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }
}