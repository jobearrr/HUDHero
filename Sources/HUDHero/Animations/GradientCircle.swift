//
//  GradientCircle.swift
//
//
//  Created by Jobert Sá on 19/06/2024.
//

import SwiftUI

/// An animation of a circle with a thick line and a gradient through the circle line,
/// and the circle spins around.
struct GradientCircle: View {

    let config: Config
    @State private var rotationAngle: CGFloat = .zero

    var body: some View {
        ZStack {
            Image(systemName: config.iconName)
                .resizable()
                .font(.system(size: 20, weight: .black))
                .frame(width: config.size, height: config.size)
                .foregroundStyle(gradient())
                .foregroundStyle(config.foregroundColor)
                .rotationEffect(.degrees(rotationAngle))
        }
        .frame(width: config.size, height: config.size)
        .clipped()
        .rotating($rotationAngle, duration: 1.0/CGFloat(config.rps))
    }

    private func gradient() -> some ShapeStyle {
        let gradient = Gradient(colors: [
            config.foregroundColor.opacity(0),
            config.foregroundColor.opacity(1)
        ])
        return AngularGradient(
            gradient: gradient,
            center: .center
        )
    }

    private func animation() -> Animation {
        let duration = TimeInterval(1.0/CGFloat(config.rps))
        let animation: Animation = .linear(duration: duration)
        return animation.repeatForever(autoreverses: false)
    }
}

extension GradientCircle {
    struct Config: HUDConfig {
        let iconName: String
        let foregroundColor: Color
        let size: CGFloat
        let rps: Int
    }

    static var `default`: GradientCircle = {
        GradientCircle(
            config: Config(
                iconName: "circle",
                foregroundColor: .primary,
                size: 30,
                rps: 1
            )
        )
    }()
}

#Preview {
    GradientCircle.default
}
