//
//  FavoriteFilmView + SetupUI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

extension FavoriteFilmsView {
    func setupUI() {
        view.addSubview(favoriteFilmsTableView)
        
        NSLayoutConstraint.activate([
            favoriteFilmsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            favoriteFilmsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            favoriteFilmsTableView.topAnchor.constraint(equalTo: view.topAnchor),
            favoriteFilmsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    func setupNavigation() {
        navigationController?.navigationBar.topItem?.title = "Избранное"
        navigationController?.navigationBar.backgroundColor = .orangeFAColor

    }
}
