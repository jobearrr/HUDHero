//
//  GradientCircleTests.swift
//  
//
//  Created by Jobert Sá on 30/06/2024.
//

import XCTest
import SwiftUI
@testable import HUDHero

final class GradientCircleTests: XCTestCase {

    func testGradientCircleDefault() {
        let gradientCircle = GradientCircle.default

        XCTAssertEqual(gradientCircle.config.iconName, "circle")
        XCTAssertEqual(gradientCircle.config.foregroundColor, .primary)
        XCTAssertEqual(gradientCircle.config.size, 30)
        XCTAssertEqual(gradientCircle.config.rps, 1)
    }
}
