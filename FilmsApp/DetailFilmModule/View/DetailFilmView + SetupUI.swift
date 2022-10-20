//
//  DetailFilmView + SetupUI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 18.10.2022.
//

import UIKit

extension DetailFilmView {
    func setupUI() {
        
//       MARK: - Film description views
        view.addSubview(filmPosterImageView)
        view.addSubview(originalTitleLabel)
        view.addSubview(releaseDateLabel)
        view.addSubview(ratingLabel)
//        MARK: - Fotages from filming views
        view.addSubview(fotagesFromFilmingLabel)
        view.addSubview(fotagesCountLabel)
        view.addSubview(openFotagesFromFilmingButton)
        view.addSubview(fotagesCollectionView)

        view.addSubview(descriptionLabel)
        view.addSubview(descriptionTextView)
        
        NSLayoutConstraint.activate([
            filmPosterImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            filmPosterImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
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
            openFotagesFromFilmingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)])
        NSLayoutConstraint.activate([
            fotagesCountLabel.topAnchor.constraint(equalTo: fotagesFromFilmingLabel.topAnchor),
            fotagesCountLabel.trailingAnchor.constraint(equalTo: openFotagesFromFilmingButton.leadingAnchor, constant: -10)])
        NSLayoutConstraint.activate([
            fotagesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            fotagesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            fotagesCollectionView.topAnchor.constraint(equalTo: fotagesFromFilmingLabel.bottomAnchor, constant: 0),
            fotagesCollectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 3.5 + 30)])
        NSLayoutConstraint.activate([
            descriptionLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: fotagesCollectionView.bottomAnchor, constant: 10)])
        NSLayoutConstraint.activate([
            descriptionTextView.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            descriptionTextView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            descriptionTextView.trailingAnchor.constraint(equalTo: openFotagesFromFilmingButton.trailingAnchor),
            descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)])
    }
    
    func setupNavigation(with title: String){
//        navigationController?.navigationBar.topItem?.title = title
        
        let backButton = UIButton()
        backButton.setImage(UIImage(systemName: "chevron.backward", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
//        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        let backBarButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = backBarButtonItem
        navigationController?.navigationBar.prefersLargeTitles = false
//        self.navigationItem.backBarButtonItem = backBarButtonItem
//        self.navigationItem.backButtonTitle = "dfvd"
    }
}
