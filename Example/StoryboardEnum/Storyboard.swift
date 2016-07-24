//
//  Storyboard.swift
//  StoryboardEnum
//
//  Created by Matteo Crippa on 7/24/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import StoryboardEnum

enum Storyboard: StoryboardEnum {
    
    case Main
    
    func getName() -> String {
        switch self {
        case Main:
            return "Main"
        }
    }
    
    func getVC() -> UIViewController? {
        let storyboard = UIStoryboard(name: getName(), bundle: NSBundle.mainBundle())
        
        var vc: UIViewController?
        
        switch self {
        case Main:
            vc = storyboard.instantiateViewControllerWithIdentifier(getName()) as? ViewController

        }
        
        print(vc)
        
        return vc
    }
}