//
//  DetailFilmView + Actions.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 18.10.2022.
//

import UIKit

extension DetailFilmView {
    func configureViewData(with item: MainScreenItemModel?) {
        guard let item = item else { return }
        self.filmPosterImageView.image = item.filmPosterImage
        self.ratingLabel.text = "Рейтинг - \(item.rating)"
        self.originalTitleLabel.text = item.originalTitle
        self.releaseDateLabel.text = item.releaseDate
    }
    
    @objc func backButtonTapped() {
        self.dismiss(animated: true)
    }
}
