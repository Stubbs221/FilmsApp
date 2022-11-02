//
//  PosterFullView + SetupUI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 20.10.2022.
//

import UIKit

extension PosterFullView {
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(posterFullImageView)
        view.addSubview(closePosterViewButton)
        
        NSLayoutConstraint.activate([
            posterFullImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            posterFullImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            posterFullImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            posterFullImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        NSLayoutConstraint.activate([
            closePosterViewButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            closePosterViewButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)])
    }
}
