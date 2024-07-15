//
//  HUDBuilderTests.swift
//
//
//  Created by Jobert Sá on 29/06/2024.
//

import XCTest
import SwiftUI
@testable import HUDHero

final class HUDBuilderTests: XCTestCase {

    func testHUDBuilderInit() {
        let builder = HUDBuilder()

        // Using reflection to access private properties
        let mirror = Mirror(reflecting: builder)
        let animation = mirror.children.first { $0.label == "animation" }?.value as? HUDAnimation
        let foregroundColor = mirror.children.first { $0.label == "foregroundColor" }?.value as? Color
        let isLoading = mirror.children.first { $0.label == "_isLoading" }?.value as? Binding<Bool>

        XCTAssertEqual(animation, .gradientCircle)
        XCTAssertEqual(foregroundColor, .primary)
        XCTAssertEqual(isLoading?.wrappedValue, false)
    }

    func testAnimationMethod() {
        let builder = HUDBuilder()
        builder.animation(.chasingDot)

        // Using reflection to access private properties
        let mirror = Mirror(reflecting: builder)
        let animation = mirror.children.first { $0.label == "animation" }?.value as? HUDAnimation

        XCTAssertEqual(animation, .chasingDot)
    }

    func testForegroundColorMethod() {
        let builder = HUDBuilder()
        builder.foregroundColor(.red)

        // Using reflection to access private properties
        let mirror = Mirror(reflecting: builder)
        let foregroundColor = mirror.children.first { $0.label == "foregroundColor" }?.value as? Color

        XCTAssertEqual(foregroundColor, .red)
    }

    func testIsLoadingMethod() {
        let binding = Binding.constant(true)
        let builder = HUDBuilder()
        builder.isLoading(binding)

        // Using reflection to access private properties
        let mirror = Mirror(reflecting: builder)
        let isLoading = mirror.children.first { $0.label == "_isLoading" }?.value as? Binding<Bool>

        XCTAssertEqual(isLoading?.wrappedValue, true)
    }

    func testBuildMethod() {
        let builder = HUDBuilder()
        let hud = builder.build()

        XCTAssertEqual(hud.animation, .gradientCircle)
        XCTAssertEqual(hud.foregroundColor, .primary)
        XCTAssertEqual(hud.isLoading, false)
    }
}
