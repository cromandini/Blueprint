//
//  DeclarativeLayoutConstraintTests.swift
//  Blueprint
//

import XCTest
import Blueprint

class LayoutEquationTests: XCTestCase {
    
    let view1 = UIView()
    let view2 = UIView()
    
    // MARK: - UIView Properties
    
    func testThatViewLeftGetsLayoutProperty() {
        // when
        let layoutProperty = view1.left
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Left, "Attribute should be .Left")
    }
    
    func testThatViewRightGetsLayoutProperty() {
        // when
        let layoutProperty = view1.right
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Right, "Attribute should be .Right")
    }
    
    func testThatViewTopGetsLayoutProperty() {
        // when
        let layoutProperty = view1.top
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Top, "Attribute should be .Top")
    }
    
    func testThatViewBottomGetsLayoutProperty() {
        // when
        let layoutProperty = view1.bottom
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Bottom, "Attribute should be .Bottom")
    }
    
    func testThatViewLeadingGetsLayoutProperty() {
        // when
        let layoutProperty = view1.leading
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Leading, "Attribute should be .Leading")
    }
    
    func testThatViewTrailingGetsLayoutProperty() {
        // when
        let layoutProperty = view1.trailing
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Trailing, "Attribute should be .Trailing")
    }
    
    func testThatViewWidthGetsLayoutProperty() {
        // when
        let layoutProperty = view1.width
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Width, "Attribute should be .Width")
    }
    
    func testThatViewHeightGetsLayoutProperty() {
        // when
        let layoutProperty = view1.height
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Height, "Attribute should be .Height")
    }
    
    func testThatViewCenterXGetsLayoutProperty() {
        // when
        let layoutProperty = view1.centerX
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.CenterX, "Attribute should be .CenterX")
    }
    
    func testThatViewCenterYGetsLayoutProperty() {
        // when
        let layoutProperty = view1.centerY
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.CenterY, "Attribute should be .CenterY")
    }
    
    func testThatViewBaselineGetsLayoutProperty() {
        // when
        let layoutProperty = view1.baseline
        
        // then
        XCTAssert(layoutProperty.item === view1, "View should be view1")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.Baseline, "Attribute should be .Baseline")
    }
    
    func testThatViewFirstBaselineGetsLayoutProperty() {
        // when
        let layoutProperty = view2.firstBaseline
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.FirstBaseline, "Attribute should be .FirstBaseline")
    }
    
    func testThatViewLeftMarginGetsLayoutProperty() {
        // when
        let layoutProperty = view2.leftMargin
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.LeftMargin, "Attribute should be .LeftMargin")
    }
    
    func testThatViewRightMarginGetsLayoutProperty() {
        // when
        let layoutProperty = view2.rightMargin
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.RightMargin, "Attribute should be .RightMargin")
    }
    
    func testThatViewTopMarginGetsLayoutProperty() {
        // when
        let layoutProperty = view2.topMargin
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.TopMargin, "Attribute should be .TopMargin")
    }
    
    func testThatViewBottomMarginGetsLayoutProperty() {
        // when
        let layoutProperty = view2.bottomMargin
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.BottomMargin, "Attribute should be .BottomMargin")
    }
    
    func testThatViewLeadingMarginGetsLayoutProperty() {
        // when
        let layoutProperty = view2.leadingMargin
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.LeadingMargin, "Attribute should be .LeadingMargin")
    }
    
    func testThatViewTrailingMarginGetsLayoutProperty() {
        // when
        let layoutProperty = view2.trailingMargin
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.TrailingMargin, "Attribute should be .TrailingMargin")
    }
    
    func testThatViewCenterXWithinMarginsGetsLayoutProperty() {
        // when
        let layoutProperty = view2.centerXWithinMargins
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.CenterXWithinMargins, "Attribute should be .CenterXWithinMargins")
    }
    
    func testThatViewCenterYWithinMarginsGetsLayoutProperty() {
        // when
        let layoutProperty = view2.centerYWithinMargins
        
        // then
        XCTAssert(layoutProperty.item === view2, "View should be view2")
        XCTAssertEqual(layoutProperty.attribute, NSLayoutAttribute.CenterYWithinMargins, "Attribute should be .CenterYWithinMargins")
    }
    
    // MARK: - Linear Equation Operators
    
    func testThatFirstItemAndAttributeAreTakenFromLayoutPropertyOnLeftHandSide() {
        // when
        var c = view1.width == 200
        
        // then
        XCTAssert(c.firstItem === view1, "First item should be view1")
        XCTAssertEqual(c.firstAttribute, NSLayoutAttribute.Width, "First attribute should be .Width")
        
        // when
        c = view1.top == view2.top
        
        // then
        XCTAssert(c.firstItem === view1, "First item should be view1")
        XCTAssertEqual(c.firstAttribute, NSLayoutAttribute.Top, "First attribute should be .Top")
        
        // when
        c = view2.top == view1.top * 0.5 + 200 ~ 900
        
        // then
        XCTAssert(c.firstItem === view2, "First item should be view2")
        XCTAssertEqual(c.firstAttribute, NSLayoutAttribute.Top, "First attribute should be .Top")
    }
    
    func testThatEqualOperatorSetsEqualRelation() {
        // when
        let c1 = view1.width == 200
        let c2 = view1.width == view2.height
        let c3 = view1.width == view2.height * 2
        
        // then
        XCTAssertEqual(c1.relation, NSLayoutRelation.Equal, "Relation should be .Equal")
        XCTAssertEqual(c2.relation, NSLayoutRelation.Equal, "Relation should be .Equal")
        XCTAssertEqual(c3.relation, NSLayoutRelation.Equal, "Relation should be .Equal")
    }
    
    func testThatLessThanOrEqualOperatorSetsLessThanOrEqualRelation() {
        // when
        let c1 = view1.width <= 200
        let c2 = view1.width <= view2.height
        let c3 = view1.width <= view2.height * 2
        
        // then
        XCTAssertEqual(c1.relation, NSLayoutRelation.LessThanOrEqual, "Relation should be .LessThanOrEqual")
        XCTAssertEqual(c2.relation, NSLayoutRelation.LessThanOrEqual, "Relation should be .LessThanOrEqual")
        XCTAssertEqual(c3.relation, NSLayoutRelation.LessThanOrEqual, "Relation should be .LessThanOrEqual")
    }
    
    func testThatGreaterThanOrEqualOperatorSetsGreaterThanOrEqualRelation() {
        // when
        let c1 = view1.width >= 200
        let c2 = view1.width >= view2.height
        let c3 = view1.width >= view2.height * 2
        
        // then
        XCTAssertEqual(c1.relation, NSLayoutRelation.GreaterThanOrEqual, "Relation should be .GreaterThanOrEqual")
        XCTAssertEqual(c2.relation, NSLayoutRelation.GreaterThanOrEqual, "Relation should be .GreaterThanOrEqual")
        XCTAssertEqual(c3.relation, NSLayoutRelation.GreaterThanOrEqual, "Relation should be .GreaterThanOrEqual")
    }
    
    func testThatConstraintCanBeCreatedWithConstantOnRightHandSide() {
        // when
        var c = view1.width == 200
        
        // then
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        // when
        c = view1.width == -200
        
        // then
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testThatConstraintCanBeCreatedWithConstantAndPriorityOnRightHandSide() {
        // when
        var c = view1.width == 200 ~ 900
        
        // then
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        // when
        c = view1.width == -200 ~ 900
        
        // then
        XCTAssertNil(c.secondItem, "Second item should be nil")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.NotAnAttribute, "Second attribute should be .NotAnAttribute")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyOnRightHandSide() {
        // when
        let c = view1.width == view2.height
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyAndMultiplierOnRightHandSide() {
        // when
        var c = view1.width == view2.height * 2
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        // when
        c = view1.width == view2.height / 2
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyMultiplierAndConstantOnRightHandSide() {
        // when
        var c = view1.width == view2.height * 2 + 200
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        // when
        c = view1.width == view2.height / 2 + 200
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        // when
        c = view1.width == view2.height * 2 - 200
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        // when
        c = view1.width == view2.height / 2 - 200
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyMultiplierAndPriorityOnRightHandSide() {
        // when
        var c = view1.width == view2.height * 2 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        // when
        c = view1.width == view2.height / 2 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyMultiplierConstantAndPriorityOnRightHandSide() {
        // when
        var c = view1.width == view2.height * 2 + 200 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        // when
        c = view1.width == view2.height / 2 + 200 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        // when
        c = view1.width == view2.height * 2 - 200 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 2, "Multiplier should be 2")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        // when
        c = view1.width == view2.height / 2 - 200 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 0.5, "Multiplier should be 0.5")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyAndConstantOnRightHandSide() {
        // when
        var c = view1.width == view2.height + 200
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
        
        // when
        c = view1.width == view2.height - 200
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 1000, "Priority should be 1000")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyConstantAndPriorityOnRightHandSide() {
        // when
        var c = view1.width == view2.height + 200 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 200, "Constant should be 200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
        
        // when
        c = view1.width == view2.height - 200 ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, -200, "Constant should be -200")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
    
    func testThatConstraintCanBeCreatedWithLayoutPropertyAndPriorityOnRightHandSide() {
        // when
        let c = view1.width == view2.height ~ 900
        
        // then
        XCTAssert(c.secondItem === view2, "Second item should be view2")
        XCTAssertEqual(c.secondAttribute, NSLayoutAttribute.Height, "Second attribute should be .Height")
        XCTAssertEqual(c.multiplier, 1, "Multiplier should be 1")
        XCTAssertEqual(c.constant, 0, "Constant should be 0")
        XCTAssertEqual(c.priority, 900, "Priority should be 900")
    }
}
