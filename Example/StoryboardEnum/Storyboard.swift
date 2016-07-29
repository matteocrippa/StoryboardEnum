//
//  Storyboard.swift
//  StoryboardEnum
//
//  Created by Matteo Crippa on 7/24/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import StoryboardEnum

// create a new enum of type Storyboard enum
enum Storyboard: StoryboardEnum {
    
    // pass inside story your window
    var story: StoryboardVC {
        // this allow you to avoid to call/pass always window
        return StoryboardVC(inWindow: UIApplication.sharedApplication().windows.first!)
    }
    
    // set at least a case
    case Main
    
    // then set the vc that will be returned
    var vc: UIViewController? {
        // drill down the cases (here we have only one)
        switch self {
            // let's check for main
        case Main:
            // according our storyboard we have to refer to Main and w/ identifier Main
            return story.getVC(fromStoryboard: "Main", withIdentifier: "Main")
        }
    }

}
