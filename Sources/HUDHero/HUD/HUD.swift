//
//  HUD.swift
//
//
//  Created by Jobert Sá on 19/06/2024.
//

import SwiftUI

public struct HUD: View {
    
    let animation: HUDAnimation = .chasingDot
    @Binding var isLoading: Bool
    @State private var show: Bool = false
    
    public var body: some View {
        ZStack {
            if show {
                ZStack {
                    animationView
                }
                .frame(width: 100, height: 100)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
        .transition(.asymmetric(insertion: .scale, removal: .opacity))
        .onChange(of: isLoading) { newValue in
            show = newValue
        }
    }
    
    @ViewBuilder
    private var animationView: some View {
        switch animation {
        case .chasingDot: ChasingIcon.default
        case .gradientCircle: GradientCircle.default
        }
    }
}

#Preview {
    HUDBuilder()
        .animation(.chasingDot)
        .build()
}
