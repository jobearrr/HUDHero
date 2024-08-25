//
//  View+Rotating.swift
//
//
//  Created by Jobert Sá on 25/08/2024.
//

import SwiftUI

/// A modifier to apply a continuous rotation animation to any view.
extension View {
    
    /// Applies a continuous rotation animation to the view.
    /// - Parameters:
    ///   - angle: A binding to the rotation angle.
    ///   - duration: The duration for one full rotation.
    /// - Returns: A view with the rotation effect applied.
    func rotating(_ angle: Binding<CGFloat>, duration: Double) -> some View {
        self
            .rotationEffect(.degrees(angle.wrappedValue))
            .onAppear {
                withAnimation(.linear(duration: duration).repeatForever(autoreverses: false)) {
                    angle.wrappedValue += 360
                }
            }
    }
}
