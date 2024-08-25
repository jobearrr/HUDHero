//
//  HUDConfig.swift
//
//
//  Created by Jobert Sá on 25/08/2024.
//

import Foundation
import SwiftUI

protocol HUDConfig {
    var iconName: String { get }
    var foregroundColor: Color { get }
    var size: CGFloat { get }
    var rps: Int { get }
}
