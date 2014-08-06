//
//  DeclarativeLayoutConstraintTests.swift
//  Blueprint
//
//  Created by Claudio Romandini on 06/08/14.
//  Copyright (c) 2014 Claudio Romandini. All rights reserved.
//

import XCTest
import Blueprint

class LayoutEquationTests: XCTestCase {
    
    let view1 = UIView()
    let view2 = UIView()
    
    // MARK: - UIView Properties
    
    func testViewPropertyLeft() {
        let property = view1.left
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Left, "Attribute should be .Left")
    }
    
    func testViewPropertyRight() {
        let property = view1.right
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Right, "Attribute should be .Right")
    }
    
    func testViewPropertyTop() {
        let property = view1.top
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Top, "Attribute should be .Top")
    }
    
    func testViewPropertyBottom() {
        let property = view1.bottom
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Bottom, "Attribute should be .Bottom")
    }
    
    func testViewPropertyLeading() {
        let property = view1.leading
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Leading, "Attribute should be .Leading")
    }
    
    func testViewPropertyTrailing() {
        let property = view1.trailing
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Trailing, "Attribute should be .Trailing")
    }
    
    func testViewPropertyWidth() {
        let property = view1.width
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Width, "Attribute should be .Width")
    }
    
    func testViewPropertyHeight() {
        let property = view1.height
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Height, "Attribute should be .Height")
    }
    
    func testViewPropertyCenterX() {
        let property = view1.centerX
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.CenterX, "Attribute should be .CenterX")
    }
    
    func testViewPropertyCenterY() {
        let property = view1.centerY
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.CenterY, "Attribute should be .CenterY")
    }
    
    func testViewPropertyBaseline() {
        let property = view1.baseline
        XCTAssert(property.item === view1, "View should be view1")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.Baseline, "Attribute should be .Baseline")
    }
    
    func testViewPropertyFirstBaseline() {
        let property = view2.firstBaseline
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.FirstBaseline, "Attribute should be .FirstBaseline")
    }
    
    func testViewPropertyLeftMargin() {
        let property = view2.leftMargin
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.LeftMargin, "Attribute should be .LeftMargin")
    }
    
    func testViewPropertyRightMargin() {
        let property = view2.rightMargin
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.RightMargin, "Attribute should be .RightMargin")
    }
    
    func testViewPropertyTopMargin() {
        let property = view2.topMargin
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.TopMargin, "Attribute should be .TopMargin")
    }
    
    func testViewPropertyBottomMargin() {
        let property = view2.bottomMargin
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.BottomMargin, "Attribute should be .BottomMargin")
    }
    
    func testViewPropertyLeadingMargin() {
        let property = view2.leadingMargin
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.LeadingMargin, "Attribute should be .LeadingMargin")
    }
    
    func testViewPropertyTrailingMargin() {
        let property = view2.trailingMargin
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.TrailingMargin, "Attribute should be .TrailingMargin")
    }
    
    func testViewPropertyCenterXWithinMargins() {
        let property = view2.centerXWithinMargins
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.CenterXWithinMargins, "Attribute should be .CenterXWithinMargins")
    }
    
    func testViewPropertyCenterYWithinMargins() {
        let property = view2.centerYWithinMargins
        XCTAssert(property.item === view2, "View should be view2")
        XCTAssertEqual(property.attribute, NSLayoutAttribute.CenterYWithinMargins, "Attribute should be .CenterYWithinMargins")
    }
    
    // MARK: - Linear Equation Operators
    
    func testLeftHandSide() {
        var c = view1.width == 200
        XCTAssert(c.firstItem === view1, "First item should be view1")
        XCTAssertEqual(c.firstAttribute, NSLayoutAttribute.Width, "First attribute should be .Width")
        
        c = view1.top == view2.top
        XCTAssert(c.firstItem === view1, "First item should be view1")
        XCTAssertEqual(c.firstAttribute, NSLayoutAttribute.Top, "First attribute should be .Top")
    }
    
    func testRelations() {
        let attribute1 = view1.width
        let attribute2 = view2.height
        let modified = attribute2 * 2
        
        XCTAssertEqual((attribute1 == 200).relation, NSLayoutRelation.Equal, "Relation should be .Equal")
        XCTAssertEqual((attribute1 == attribute2).relation, NSLayoutRelation.Equal, "Relation should be .Equal")
        XCTAssertEqual((attribute1 == modified).relation, NSLayoutRelation.Equal, "Relation should be .Equal")
        
        XCTAssertEqual((attribute1 <= 200).relation, NSLayoutRelation.LessThanOrEqual, "Relation should be .LessThanOrEqual")
        XCTAssertEqual((attribute1 <= attribute2).relation, NSLayoutRelation.LessThanOrEqual, "Relation should be .LessThanOrEqual")
        XCTAssertEqual((attribute1 <= modified).relation, NSLayoutRelation.LessThanOrEqual, "Relation should be .LessThanOrEqual")
        
        XCTAssertEqual((attribute1 >= 200).relation, NSLayoutRelation.GreaterThanOrEqual, "Relation should be .GreaterThanOrEqual")
        XCTAssertEqual((attribute1 >= attribute2).relation, NSLayoutRelation.GreaterThanOrEqual, "Relation should be .GreaterThanOrEqual")
        XCTAssertEqual((attribute1 >= modified).relation, NSLayoutRelation.GreaterThanOrEqual, "Relation should be .GreaterThanOrEqual")
    }
    
    func testRightHandSideWithConstant() {
        var c = view1.width == 200
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        c = view1.width == -200
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testRightHandSideWithConstantAndPriority() {
        var c = view1.width == 200 ~ 900
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        c = view1.width == -200 ~ 900
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testRightHandSideWithAttribute() {
        let c = view1.width == view2.height
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testRightHandSideWithAttributeAndMultiplier() {
        var c = view1.width == view2.height * 2
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        c = view1.width == view2.height / 2
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testRightHandSideWithAttributeMultiplierAndConstant() {
        var c = view1.width == view2.height * 2 + 200
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        c = view1.width == view2.height / 2 + 200
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        c = view1.width == view2.height * 2 - 200
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        c = view1.width == view2.height / 2 - 200
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testRightHandSideWithAttributeMultiplierAndPriority() {
        var c = view1.width == view2.height * 2 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        c = view1.width == view2.height / 2 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testRightHandSideWithAttributeMultiplierConstantAndPriority() {
        var c = view1.width == view2.height * 2 + 200 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        c = view1.width == view2.height / 2 + 200 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        c = view1.width == view2.height * 2 - 200 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        c = view1.width == view2.height / 2 - 200 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testRightHandSideWithAttributeAndConstant() {
        var c = view1.width == view2.height + 200
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        c = view1.width == view2.height - 200
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testRightHandSideWithAttributeConstantAndPriority() {
        var c = view1.width == view2.height + 200 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        c = view1.width == view2.height - 200 ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testRightHandSideWithAttributeAndPriority() {
        let c = view1.width == view2.height ~ 900
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
}
