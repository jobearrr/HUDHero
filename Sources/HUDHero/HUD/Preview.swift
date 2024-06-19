//
//  Preview.swift
//
//
//  Created by Jobert Sá on 18/06/2024.
//

import SwiftUI

struct Preview: View {
    let hudHero: HUDHero
    
    init(hudHero: HUDHero) {
        self.hudHero = hudHero
    }
    
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    Preview(hudHero: HUDHero())
}
