//
//  DeclarativeLayoutConstraint.swift
//  Blueprint
//
//  Created by Claudio Romandini on 06/08/14.
//  Copyright (c) 2014 Claudio Romandini. All rights reserved.
//

import UIKit

// MARK: Types

public typealias LayoutProperty = (item: AnyObject!, attribute: NSLayoutAttribute)

public struct ModifiedLayoutProperty {
    public let property: LayoutProperty = (nil, .NotAnAttribute)
    public let multiplier: CGFloat = 1
    public private(set) var constant: CGFloat = 0
    public private(set) var priority: UILayoutPriority = 1000
}

// MARK: - View Properties

public extension UIView {
    var left: LayoutProperty { return (self, .Left) }
    var right: LayoutProperty { return (self, .Right) }
    var top: LayoutProperty { return (self, .Top) }
    var bottom: LayoutProperty { return (self, .Bottom) }
    var leading: LayoutProperty { return (self, .Leading) }
    var trailing: LayoutProperty { return (self, .Trailing) }
    var width: LayoutProperty { return (self, .Width) }
    var height: LayoutProperty { return (self, .Height) }
    var centerX: LayoutProperty { return (self, .CenterX) }
    var centerY: LayoutProperty { return (self, .CenterY) }
    var baseline: LayoutProperty { return (self, .Baseline) }
    var firstBaseline: LayoutProperty { return (self, .FirstBaseline) }
    var leftMargin: LayoutProperty { return (self, .LeftMargin) }
    var rightMargin: LayoutProperty { return (self, .RightMargin) }
    var topMargin: LayoutProperty { return (self, .TopMargin) }
    var bottomMargin: LayoutProperty { return (self, .BottomMargin) }
    var leadingMargin: LayoutProperty { return (self, .LeadingMargin) }
    var trailingMargin: LayoutProperty { return (self, .TrailingMargin) }
    var centerXWithinMargins: LayoutProperty { return (self, .CenterXWithinMargins) }
    var centerYWithinMargins: LayoutProperty { return (self, .CenterYWithinMargins) }
}

// MARK: - Linear Equation Operators

public func *(lhs: LayoutProperty, rhs: CGFloat) -> ModifiedLayoutProperty {
    return ModifiedLayoutProperty(property: lhs, multiplier: rhs)
}

public func /(lhs: LayoutProperty, rhs: CGFloat) -> ModifiedLayoutProperty {
    return lhs * (1 / rhs)
}

public func +(lhs: LayoutProperty, rhs: CGFloat) -> ModifiedLayoutProperty {
    return ModifiedLayoutProperty(property: lhs, constant: rhs)
}

public func +(var lhs: ModifiedLayoutProperty, rhs: CGFloat) -> ModifiedLayoutProperty {
    lhs.constant = rhs
    return lhs
}

public func -(lhs: LayoutProperty, rhs: CGFloat) -> ModifiedLayoutProperty {
    return lhs + -rhs
}

public func -(var lhs: ModifiedLayoutProperty, rhs: CGFloat) -> ModifiedLayoutProperty {
    return lhs + -rhs
}

infix operator ~ { precedence 135 }

public func ~(lhs: CGFloat, rhs: UILayoutPriority) -> ModifiedLayoutProperty {
    return ModifiedLayoutProperty(constant: lhs, priority: rhs)
}

public func ~(lhs: LayoutProperty, rhs: UILayoutPriority) -> ModifiedLayoutProperty {
    return ModifiedLayoutProperty(property: lhs, priority: rhs)
}

public func ~(var lhs: ModifiedLayoutProperty, rhs: UILayoutPriority) -> ModifiedLayoutProperty {
    lhs.priority = rhs
    return lhs
}

public func ==(lhs: LayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .Equal, ModifiedLayoutProperty(constant: rhs))
}

public func ==(lhs: LayoutProperty, rhs: LayoutProperty) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .Equal, ModifiedLayoutProperty(property: rhs))
}

public func ==(lhs: LayoutProperty, rhs: ModifiedLayoutProperty) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .Equal, rhs)
}

public func <=(lhs: LayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .LessThanOrEqual, ModifiedLayoutProperty(constant: rhs))
}

public func <=(lhs: LayoutProperty, rhs: LayoutProperty) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .LessThanOrEqual, ModifiedLayoutProperty(property: rhs))
}

public func <=(lhs: LayoutProperty, rhs: ModifiedLayoutProperty) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .LessThanOrEqual, rhs)
}

public func >=(lhs: LayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .GreaterThanOrEqual, ModifiedLayoutProperty(constant: rhs))
}

public func >=(lhs: LayoutProperty, rhs: LayoutProperty) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .GreaterThanOrEqual, ModifiedLayoutProperty(property: rhs))
}

public func >=(lhs: LayoutProperty, rhs: ModifiedLayoutProperty) -> NSLayoutConstraint {
    return NSLayoutConstraint(lhs, .GreaterThanOrEqual, rhs)
}

// MARK: - Initializer Helpers

private extension ModifiedLayoutProperty {
    init(property: LayoutProperty) {
        self.property = property
    }
    init(constant: CGFloat) {
        self.constant = constant
    }
    init(property: LayoutProperty, multiplier: CGFloat) {
        self.property = property
        self.multiplier = multiplier
    }
    init(property: LayoutProperty, constant: CGFloat) {
        self.property = property
        self.constant = constant
    }
    init(property: LayoutProperty, priority: UILayoutPriority) {
        self.property = property
        self.priority = priority
    }
    init(constant: CGFloat, priority: UILayoutPriority) {
        self.constant = constant
        self.priority = priority
    }
}

private extension NSLayoutConstraint {
    convenience init(_ property: LayoutProperty, _ relation: NSLayoutRelation, _ modified: ModifiedLayoutProperty) {
        self.init(
            item: property.item,
            attribute: property.attribute,
            relatedBy: relation,
            toItem: modified.property.item,
            attribute: modified.property.attribute,
            multiplier: modified.multiplier,
            constant: modified.constant)
        self.priority = modified.priority
    }
}
