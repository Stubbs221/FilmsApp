//
//  DetailFilmView + SetupUI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 18.10.2022.
//

import UIKit

extension DetailFilmView {
    func setupUI() {
        
        view.addSubview(detailFilmScrollView)
        detailFilmScrollView.addSubview(detailFilmContentView)
//       MARK: - Film description views
        detailFilmContentView.addSubview(filmPosterImageView)
        detailFilmContentView.addSubview(originalTitleLabel)
        detailFilmContentView.addSubview(releaseDateLabel)
        detailFilmContentView.addSubview(ratingLabel)
//        MARK: - Fotages from filming views
        detailFilmContentView.addSubview(fotagesFromFilmingLabel)
        detailFilmContentView.addSubview(fotagesCountLabel)
        detailFilmContentView.addSubview(openFotagesFromFilmingButton)
        detailFilmContentView.addSubview(fotagesCollectionView)

        detailFilmContentView.addSubview(descriptionLabel)
        detailFilmContentView.addSubview(descriptionTextView)
        
        NSLayoutConstraint.activate([
            detailFilmScrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailFilmScrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            detailFilmScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            detailFilmScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            detailFilmContentView.centerXAnchor.constraint(equalTo: detailFilmScrollView.centerXAnchor),
            detailFilmContentView.widthAnchor.constraint(equalTo: detailFilmScrollView.widthAnchor),
            detailFilmContentView.topAnchor.constraint(equalTo: detailFilmScrollView.topAnchor),
            detailFilmContentView.bottomAnchor.constraint(equalTo: detailFilmScrollView.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            filmPosterImageView.leadingAnchor.constraint(equalTo: detailFilmContentView.leadingAnchor, constant: 10),
            filmPosterImageView.topAnchor.constraint(equalTo: detailFilmContentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            filmPosterImageView.heightAnchor.constraint(equalToConstant: 290),
            filmPosterImageView.widthAnchor.constraint(equalToConstant: 180)
        ])
        NSLayoutConstraint.activate([
            originalTitleLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.trailingAnchor, constant: 10),
            originalTitleLabel.topAnchor.constraint(equalTo: filmPosterImageView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            releaseDateLabel.leadingAnchor.constraint(equalTo: originalTitleLabel.leadingAnchor),
            releaseDateLabel.topAnchor.constraint(equalTo: originalTitleLabel.bottomAnchor, constant: 10)
        ])
        NSLayoutConstraint.activate([
            ratingLabel.leadingAnchor.constraint(equalTo: originalTitleLabel.leadingAnchor),
            ratingLabel.bottomAnchor.constraint(equalTo: filmPosterImageView.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            fotagesFromFilmingLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            fotagesFromFilmingLabel.topAnchor.constraint(equalTo: filmPosterImageView.bottomAnchor, constant: 20)])
        NSLayoutConstraint.activate([
            openFotagesFromFilmingButton.topAnchor.constraint(equalTo: fotagesFromFilmingLabel.topAnchor),
            openFotagesFromFilmingButton.trailingAnchor.constraint(equalTo: detailFilmContentView.trailingAnchor, constant: -10)])
        NSLayoutConstraint.activate([
            fotagesCountLabel.topAnchor.constraint(equalTo: fotagesFromFilmingLabel.topAnchor),
            fotagesCountLabel.trailingAnchor.constraint(equalTo: openFotagesFromFilmingButton.leadingAnchor, constant: -10)])
        NSLayoutConstraint.activate([
            fotagesCollectionView.leadingAnchor.constraint(equalTo: detailFilmContentView.leadingAnchor),
            fotagesCollectionView.trailingAnchor.constraint(equalTo: detailFilmContentView.trailingAnchor),
            fotagesCollectionView.topAnchor.constraint(equalTo: fotagesFromFilmingLabel.bottomAnchor, constant: 0),
            fotagesCollectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 3.5 + 30)])
        NSLayoutConstraint.activate([
            descriptionLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: fotagesCollectionView.bottomAnchor, constant: 10)])
        NSLayoutConstraint.activate([
            descriptionTextView.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            descriptionTextView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            descriptionTextView.trailingAnchor.constraint(equalTo: openFotagesFromFilmingButton.trailingAnchor),
//            descriptionTextView.heightAnchor.constraint(equalToConstant: 500),
            descriptionTextView.bottomAnchor.constraint(equalTo: detailFilmContentView.bottomAnchor, constant: -100)])
    }
    
    func setupNavigation(with title: String){
        navigationController?.navigationBar.topItem?.title = title
        
        let backButton = UIButton()
        backButton.setImage(UIImage(systemName: "chevron.backward", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
//        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        let backBarButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = backBarButtonItem
//        navigationController?.navigationBar.prefersLargeTitles = false
//        self.navigationItem.backBarButtonItem = backBarButtonItem
//        self.navigationItem.backButtonTitle = "dfvd"
    }
}
