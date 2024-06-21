//
//  BookListView.swift
//  MultiplatformApp
//
//  Created by Jobert Sá on 20/06/2024.
//

import HUDHero
import SwiftUI

struct BookListView: View {
    
    @StateObject private var viewModel = BooksViewModel()
    
    var body: some View {
        VStack {
            TextField("Search Books", text: $viewModel.searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            ZStack {
                List(viewModel.books) { book in
                    VStack(alignment: .leading) {
                        Text(book.title)
                            .font(.headline)
                        if let authors = book.author_name {
                            Text(authors.joined(separator: ", "))
                                .font(.subheadline)
                        }
                    }
                }
                
                HUDBuilder()
                    .animation(.gradientCircle)
                    .fadeOutWhenFinished($viewModel.isLoading)
                    .build()
            }
        }
        .padding()
    }
}

#Preview {
    BookListView()
}
