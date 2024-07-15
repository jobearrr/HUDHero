//
//  ContentView.swift
//  MultiplatformApp
//
//  Created by Jobert Sá on 18/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            BookListView()
                .listStyle(PlainListStyle())

        }
    }
}

#Preview {
    ContentView()
}
