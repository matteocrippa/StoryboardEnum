//
//  StoryboardEnum.swift
//
//
//  Created by Matteo Crippa on 7/21/16.
//  Copyright © 2016 boostco.de All rights reserved.
//

import Foundation
import UIKit

public struct StoryboardVC {
    
    public var window: UIWindow?
    
    public init(inWindow window: UIWindow?){
        self.window = window
    }
    
    public func getVC(fromStoryboard name: String, withIdentifier identifier: String? = nil) -> UIViewController? {
        
        let storyboard = UIStoryboard(name: name, bundle: NSBundle.mainBundle())
        
        if let idx = identifier {
            return storyboard.instantiateViewControllerWithIdentifier(idx)
        }
        
        return storyboard.instantiateInitialViewController()
    }
    
}

public protocol StoryboardEnum {
    var vc: UIViewController? { get }
    var story: StoryboardVC { get }
}

extension StoryboardEnum {
    public func show() {
        guard let window = story.window else { return }
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }
}