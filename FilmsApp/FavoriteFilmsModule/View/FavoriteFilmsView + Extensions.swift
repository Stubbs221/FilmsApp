//
//  FavoriteFilmsView + Extensions.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

extension FavoriteFilmsView: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.favoriteFilms?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteFilmCell.reuseIdentifier, for: indexPath) as? FavoriteFilmCell,
              let favoriteFilms = favoriteFilms else { return UITableViewCell() }
        
        cell.configure(with: favoriteFilms[indexPath.row], parentVC: self)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.selectionStyle = .none
    }
}
