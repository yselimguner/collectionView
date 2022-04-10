//
//  Movies.swift
//  Collection View
//
//  Created by Yavuz Güner on 9.04.2022.
//

import Foundation

class Movies {
    var movieId:Int?
    var movieTitle:String?
    var movieImage:String?
    var moviePrice:Double?
    
    init() {
        
    }
    
    init(movieId:Int, movieTitle:String, movieImage:String, moviePrice:Double) {
        self.movieId = movieId
        self.movieTitle = movieTitle
        self.movieImage = movieImage
        self.moviePrice = moviePrice
    }
}
