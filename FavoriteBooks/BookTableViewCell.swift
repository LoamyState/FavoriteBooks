//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Jane Madsen on 3/9/23.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    var book: Book? {
        didSet {
            update()
        }
    }
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var lengthLabel: UILabel!
    
    func update() {
        guard let book else { return }
        titleLabel.text = book.title
        authorLabel.text = book.author
        genreLabel.text = book.genre
        lengthLabel.text = "\(book.length) pgs"
    }
}
