//
//  Utils.swift
//  Blueprint
//

import UIKit

public func disableAutoresizingConstraintsInViews(views: UIView...) {
    for view in views {
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
    }
}
