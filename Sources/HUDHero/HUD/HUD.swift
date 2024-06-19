//
//  HUD.swift
//
//
//  Created by Jobert Sá on 19/06/2024.
//

import SwiftUI

struct HUD: View {
    
    let config: Config
    
    var body: some View {
        ZStack {
            ZStack {
                animation
            }
            .frame(width: 100, height: 100)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
    
    private var animation: some View {
        switch config.animation {
        case .chasingDot:
            ChasingIcon.default
        }
    }
}

extension HUD {
    struct Config {
        let animation: HUDAnimation
    }
    
    static var `default`: HUD = {
        let config = Config(
            animation: .chasingDot
        )
        return .init(config: config)
    }()
}

#Preview {
    HUD.default
}
