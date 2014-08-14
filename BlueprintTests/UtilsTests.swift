//
//  UtilsTests.swift
//  Blueprint
//

import XCTest
import Blueprint

class UtilsTests: XCTestCase {
    
    func testDisableAutoresizingConstraintsInViews() {
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        
        XCTAssertTrue(view1.translatesAutoresizingMaskIntoConstraints(), "Flag should be true by default")
        XCTAssertTrue(view2.translatesAutoresizingMaskIntoConstraints(), "Flag should be true by default")
        XCTAssertTrue(view3.translatesAutoresizingMaskIntoConstraints(), "Flag should be true by default")
        
        disableAutoresizingConstraintsInViews(view1, view2, view3)
        
        XCTAssertFalse(view1.translatesAutoresizingMaskIntoConstraints(), "Flag should be false")
        XCTAssertFalse(view2.translatesAutoresizingMaskIntoConstraints(), "Flag should be false")
        XCTAssertFalse(view3.translatesAutoresizingMaskIntoConstraints(), "Flag should be false")
    }
}
