//
//  HUDBuilder.swift
//
//
//  Created by Jobert Sá on 20/06/2024.
//

import Foundation
import SwiftUI

public final class HUDBuilder: ObservableObject {
    private var animation: HUDAnimation = .gradientCircle
    private var foregroundColor: Color = .primary
    @Binding var isLoading: Bool

    public convenience init() {
        self.init(isLoading: .constant(false))
    }

    private init(isLoading: Binding<Bool>) {
        self._isLoading = isLoading
    }

    @discardableResult
    public func animation(_ animation: HUDAnimation) -> Self {
        self.animation = animation
        return self
    }

    @discardableResult
    public func foregroundColor(_ foregroundColor: Color) -> Self {
        self.foregroundColor = foregroundColor
        return self
    }

    @discardableResult
    public func isLoading(_ isLoading: Binding<Bool>) -> Self {
        self._isLoading = isLoading
        return self
    }

    public func build() -> HUD {
        HUD(
            animation: animation,
            foregroundColor: foregroundColor,
            isLoading: _isLoading
        )
    }
}
