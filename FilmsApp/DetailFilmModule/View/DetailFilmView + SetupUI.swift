//
//  DetailFilmView + SetupUI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 18.10.2022.
//

import UIKit

extension DetailFilmView {
    func setupUI() {
        view.addSubview(filmPosterImageView)
        view.addSubview(originalTitleLabel)
        view.addSubview(releaseDateLabel)
        view.addSubview(ratingLabel)
        
        NSLayoutConstraint.activate([
            filmPosterImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            filmPosterImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            filmPosterImageView.heightAnchor.constraint(equalToConstant: 290),
            filmPosterImageView.widthAnchor.constraint(equalToConstant: 180)
        ])
        NSLayoutConstraint.activate([
            originalTitleLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.trailingAnchor, constant: 10),
            originalTitleLabel.topAnchor.constraint(equalTo: filmPosterImageView.topAnchor)])
        NSLayoutConstraint.activate([
            releaseDateLabel.leadingAnchor.constraint(equalTo: originalTitleLabel.leadingAnchor),
            releaseDateLabel.topAnchor.constraint(equalTo: originalTitleLabel.bottomAnchor, constant: 10)])
        NSLayoutConstraint.activate([
            ratingLabel.leadingAnchor.constraint(equalTo: originalTitleLabel.leadingAnchor),
            ratingLabel.bottomAnchor.constraint(equalTo: filmPosterImageView.bottomAnchor)])
    }
    
    func setupNavigation(with title: String){
        navigationController?.navigationBar.topItem?.title = title
        
        let backButton = UIButton()
        backButton.setImage(UIImage(systemName: "chevron.backward", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
//        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        let backBarButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = backBarButtonItem
//        self.navigationItem.backBarButtonItem = backBarButtonItem
//        self.navigationItem.backButtonTitle = "dfvd"
    }
}
