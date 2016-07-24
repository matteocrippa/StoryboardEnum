//
//  StoryboardEnum.swift
//
//
//  Created by Matteo Crippa on 7/21/16.
//  Copyright © 2016 boostco.de. All rights reserved.
//

import Foundation
import UIKit

public protocol StoryboardEnum {
    func getName() -> String
    func getVC() -> UIViewController?
}

extension StoryboardEnum {
    public func route(window: UIWindow?) {
        window?.rootViewController = getVC()
        window?.makeKeyAndVisible()
    }
}