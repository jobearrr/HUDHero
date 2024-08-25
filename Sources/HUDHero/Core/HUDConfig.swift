//
//  HUDConfig.swift
//
//
//  Created by Jobert Sá on 25/08/2024.
//

import Foundation
import SwiftUI

/// Protocol that defines the common configuration properties for HUD animations.
protocol HUDConfig {
    /// The name of the system icon to use in the animation.
    var iconName: String { get }
    
    /// The foreground color of the animation.
    var foregroundColor: Color { get }
    
    /// The size of the animation.
    var size: CGFloat { get }
    
    /// The rotations per second (rps) for the animation.
    var rps: Int { get }
}
