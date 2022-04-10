//
//  ViewController.swift
//  Collection View
//
//  Created by Yavuz Güner on 9.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var movieList = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TASARIM İŞLEMLERİ
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let genislik = self.collectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 5
        
        let hucreGenislik = (genislik-20)/2
        
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.6)
        collectionView!.collectionViewLayout = tasarim
        
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let m1 = Movies(movieId: 1, movieTitle: "Assasin", movieImage: "assasin.jpeg", moviePrice: 15.99)
        let m2 = Movies(movieId: 2, movieTitle: "Avatar", movieImage: "avatar.jpeg", moviePrice: 20.99)
        let m3 = Movies(movieId: 3, movieTitle: "Black Mirror", movieImage: "blackmirror.jpeg", moviePrice: 18.99)
        let m4 = Movies(movieId: 4, movieTitle: "Boss", movieImage: "boss.jpeg", moviePrice: 14.99)
        let m5 = Movies(movieId: 5, movieTitle: "The Dark Night", movieImage: "darknight.jpeg", moviePrice: 19.99)
        let m6 = Movies(movieId: 6, movieTitle: "Inception", movieImage: "inception.jpeg", moviePrice: 18.99)
        let m7 = Movies(movieId: 7, movieTitle: "Joker", movieImage: "joker.jpeg", moviePrice: 22.99)
        let m8 = Movies(movieId: 8, movieTitle: "Mystic River", movieImage: "mysticriver.jpeg", moviePrice: 12.99)
        movieList.append(m1)
        movieList.append(m2)
        movieList.append(m3)
        movieList.append(m4)
        movieList.append(m5)
        movieList.append(m6)
        movieList.append(m7)
        movieList.append(m8)
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource, CollectionViewCellProtocol {
    
    func addMovies(indexPath: IndexPath) {
        let movie = movieList[indexPath.row]
        print("\(movie.movieTitle!) filmi sipariş verilmiştir.")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movie = movieList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! CollectionViewCell
        
        cell.movieNameLabel.text = movie.movieTitle!
        cell.moviePriceLabel.text = "\(movie.moviePrice!) TL"
        cell.movieImage.image = UIImage(named: movie.movieImage!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let movie = movieList[indexPath.row]
            print("\(movie.movieTitle!) filmi seçilmiştir.")
    }
}
