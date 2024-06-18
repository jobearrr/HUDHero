//
//  ChasingIcon.swift
//
//
//  Created by Jobert Sá on 18/06/2024.
//

import SwiftUI

struct ChasingIcon: View {
    
    let config: Config
    @State private var rotationAngle: CGFloat = .zero
    
    var body: some View {
        ZStack {
            ForEach(0..<config.count, id: \.self) { index in
                Image(systemName: config.iconName)
                    .resizable()
                    .frame(width: size(for: index), height: size(for: index))
                    .foregroundStyle(config.foregroundColor)
                    .rotationEffect(iconRotationEffect(for: index))
                    .offset(x: offset())
                    .rotationEffect(rotationEffect(for: index))
                    .opacity(opacity(for: index))
            }
        }
        .frame(width: config.size, height: config.size)
        .clipped()
        .onAppear {
            withAnimation(animation()) {
                rotationAngle += 360
            }
        }
    }
    
    private func size(for index: Int) -> CGFloat {
        config.iconSize * CGFloat(index) / CGFloat(config.count)
    }
    
    private func opacity(for index: Int) -> CGFloat {
        CGFloat(index) / CGFloat(config.count)
    }
    
    private func animation() -> Animation {
        let duration = TimeInterval(1.0/CGFloat(config.rps))
        let animation: Animation = .easeInOut(duration: duration)
        return animation.repeatForever(autoreverses: false)
    }
    
    private func offset() -> CGFloat {
        (config.size - config.iconSize) / 2
    }
    
    private func iconRotationEffect(for index: Int) -> Angle {
        config.keepOrientation ? -rotationEffect(for: index) : .zero
    }
    
    private func rotationEffect(for index: Int) -> Angle {
        let offset = CGFloat(index) * (360.0 / CGFloat(config.count))
        return .degrees(rotationAngle + offset)
    }
}

extension ChasingIcon {
    struct Config {
        let iconName: String
        let iconSize: CGFloat
        let foregroundColor: Color
        let keepOrientation: Bool
        let count: Int
        let size: CGFloat
        let rps: Int
    }
    
    static var `default`: ChasingIcon = {
        let config = ChasingIcon.Config(
            iconName: "circle.fill",
            iconSize: 4.0,
            foregroundColor: .primary,
            keepOrientation: true,
            count: 20,
            size: 30,
            rps: 1
        )
        return ChasingIcon(config: config)
    }()
}

#Preview {
    ChasingIcon.default
}
