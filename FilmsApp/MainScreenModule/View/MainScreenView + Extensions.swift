//
//  MainScreenView + Extensions.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

extension MainScreenView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        mockDataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainScreenCollectionViewCell.reuseIdentifier, for: indexPath) as? MainScreenCollectionViewCell else { return UICollectionViewCell() }
        let item = mockDataArray[indexPath.row]
        cell.filmPosterImageView.image = item.filmPosterImage
        cell.originalTitleLabel.text = item.originalTitle
        cell.releaseDateLabel.text = item.releaseDate
        cell.ratingLabel.text = item.rating
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: UIScreen.main.bounds.width / 2 - 10,
            height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = DetailFilmModuleConfigurator.configure(using: NavigationBuilder.build, with: self.mockDataArray[indexPath.row])
        vc.modalPresentationStyle = .fullScreen
        
        present(vc, animated: true)
    }
    
}

extension MainScreenView: UISearchBarDelegate {
    
}

