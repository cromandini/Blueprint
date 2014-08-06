//
//  Utils.swift
//  Blueprint
//
//  Created by Claudio Romandini on 06/08/14.
//  Copyright (c) 2014 Claudio Romandini. All rights reserved.
//

import UIKit

public func disableAutoresizingConstraintsInViews(views: UIView...) {
    for view in views {
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
    }
}
