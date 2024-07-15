//
//  Book.swift
//  MultiplatformApp
//
//  Created by Jobert Sá on 20/06/2024.
//

import Foundation

struct Book: Decodable, Identifiable {
    let key: String
    let title: String
    let author_name: [String]?

    var id: String { key }
}

extension Book {

    static func all() -> [Book] {
        return []
    }

}
