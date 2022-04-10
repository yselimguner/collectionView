//
//  CollectionViewCell.swift
//  Collection View
//
//  Created by Yavuz Güner on 9.04.2022.
//

import UIKit

protocol CollectionViewCellProtocol {
    func addMovies(indexPath:IndexPath)
}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var moviePriceLabel: UILabel!
    
    var cellProtocol:CollectionViewCellProtocol?
    var indexPath:IndexPath?
    
    
    @IBAction func addMovieButton(_ sender: Any) {
        
        cellProtocol?.addMovies(indexPath: indexPath!)
    }
}
