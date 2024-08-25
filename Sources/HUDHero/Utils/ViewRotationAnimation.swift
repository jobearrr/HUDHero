//
//  ViewRotationAnimation.swift
//
//
//  Created by Jobert Sá on 25/08/2024.
//

import SwiftUI

extension View {
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
