//
//  MainScreenView + Extensions.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit
import SDWebImage

extension MainScreenView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let filmsArray = filmsArray else  { return 0 }
        return filmsArray.results.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainScreenCollectionViewCell.reuseIdentifier, for: indexPath) as? MainScreenCollectionViewCell,
              let filmsArray = filmsArray else { return UICollectionViewCell() }
        let item = filmsArray.results[indexPath.row]
        let scale = UIScreen.main.scale
        let thumbnailSize =  CGSize(width: 200 * scale, height: 200 * scale)
        
        cell.filmPosterImageView.sd_setImage(with: URL(string: "https://image.tmdb.org/t/p/original" + item.posterPath), placeholderImage: nil, context: [.imageThumbnailPixelSize : thumbnailSize])
        
        
        cell.originalTitleLabel.text = item.originalTitle
        cell.releaseDateLabel.text = item.releaseDate
        cell.ratingLabel.text = String(item.voteAverage)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: UIScreen.main.bounds.width / 2 - 10,
            height: 300)
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = DetailFilmModuleConfigurator.configure(using: NavigationBuilder.build, with: self.mockDataArray[indexPath.row])
//        vc.modalPresentationStyle = .fullScreen
//        
//        present(vc, animated: true)
//    }
    
}

extension MainScreenView: UISearchBarDelegate {
    
}

