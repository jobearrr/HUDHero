//
//  ChasingIconTests.swift
//  
//
//  Created by Jobert Sá on 29/06/2024.
//

import XCTest
import SwiftUI
@testable import HUDHero

final class ChasingIconTests: XCTestCase {
    
    func testChasingIconDefault() {
        let icon = ChasingIcon.default
        
        XCTAssertEqual(icon.config.iconName, "circle.fill")
        XCTAssertEqual(icon.config.iconSize, 4.0)
        XCTAssertEqual(icon.config.foregroundColor, .primary)
        XCTAssertEqual(icon.config.keepOrientation, true)
        XCTAssertEqual(icon.config.count, 20)
        XCTAssertEqual(icon.config.size, 30)
        XCTAssertEqual(icon.config.rps, 1)
    }
}
