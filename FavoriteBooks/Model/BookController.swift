//
//  BookController.swift
//  FavoriteBooks
//
//  Created by Jane Madsen on 3/10/23.
//

import Foundation

class BookController {
    var books: [Book] = []
    
    func saveBooks() {
        // Encode
        let encoder = PropertyListEncoder()
        let encodedBooks = try? encoder.encode(books)
        
        // Save to file system
        do {
            try encodedBooks?.write(to: filePath())
        } catch {
            print(error)
        }
    }
    
    func retrieveBooks() {
        // Get data from file system
        guard let booksData = try? Data(contentsOf: filePath()) else { return }
        
        // Decode
        let decoder = PropertyListDecoder()
        guard let decodedBooks = try? decoder.decode([Book].self, from: booksData) else { return }
        books = decodedBooks
    }
    
    func filePath() -> URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsDirectory.appending(component: "books").appendingPathExtension(".plist")
    }
}
