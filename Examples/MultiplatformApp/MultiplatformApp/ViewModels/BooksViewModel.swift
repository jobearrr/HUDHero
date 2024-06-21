//
//  BooksViewModel.swift
//  MultiplatformApp
//
//  Created by Jobert Sá on 20/06/2024.
//

import Foundation
import Combine

class BooksViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var books: [Book] = []
    @Published var isLoading: Bool = false

    private var cancellables = Set<AnyCancellable>()

    init() {
        $searchText
            .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
            .removeDuplicates()
            .filter { $0.count >= 3 }
            .sink { [weak self] searchText in
                self?.fetchBooks(for: searchText)
            }
            .store(in: &cancellables)
    }

    private func fetchBooks(for searchText: String) {
        isLoading = true
        books = []

        let urlString = "https://openlibrary.org/search.json?q=\(searchText)"
        guard let url = URL(string: urlString) else { return }

        var request = URLRequest(url: url)
        request.setValue("HUDHeroDemo/0.1 (myemail@example.com)", forHTTPHeaderField: "User-Agent")

        URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: OpenLibraryResponse.self, decoder: JSONDecoder())
            .map { $0.docs }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .sink { [weak self] books in
                self?.isLoading = false
                self?.books = books
            }
            .store(in: &cancellables)
    }
}

struct OpenLibraryResponse: Decodable {
    let docs: [Book]
}
