import Foundation

struct Book: CustomStringConvertible, Codable {
    let title: String
    let author: String
    let genre: String
    let length: String
    
    var description: String {
        return "\(title) is written by \(author) in the \(genre) genre and is \(length) pages long"
    }
}

let exampleBook = Book(title: "Alice in Wonderland", author: "Lewis Carrol", genre: "Fantasy", length: "223")
