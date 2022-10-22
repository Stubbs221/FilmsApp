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
        
        NSLayoutConstraint.activate([
            posterFullImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            posterFullImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            posterFullImageView.topAnchor.constraint(equalTo: view.topAnchor),
            posterFullImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
}
