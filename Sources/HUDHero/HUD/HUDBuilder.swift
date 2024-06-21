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
    @Binding var fadeOutWhenFinished: Bool
    
    public convenience init() {
        self.init(fadeOutWhenFinished: .constant(false))
    }
    
    private init(fadeOutWhenFinished: Binding<Bool>) {
        self._fadeOutWhenFinished = fadeOutWhenFinished
    }
    
    @discardableResult
    public func animation(_ animation: HUDAnimation) -> Self {
        self.animation = animation
        return self
    }
    
    @discardableResult
    public func fadeOutWhenFinished(_ fadeOutWhenFinished: Binding<Bool>) -> Self {
        self._fadeOutWhenFinished = fadeOutWhenFinished
        return self
    }
    
    public func build() -> HUD {
        HUD(isLoading: _fadeOutWhenFinished)
    }
}
