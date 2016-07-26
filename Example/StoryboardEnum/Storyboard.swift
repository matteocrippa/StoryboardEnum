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
    
    var story: StoryboardVC {
        return StoryboardVC(inWindow: UIApplication.sharedApplication().windows.first!)
    }
        
    var vc: UIViewController? {
        switch self {
        case Main:
            return story.getVC(fromStoryboard: "Main", withIdentifier: "Main")
        }
    }

}
