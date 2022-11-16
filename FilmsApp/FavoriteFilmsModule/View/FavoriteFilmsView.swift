//
//  FavoriteFilmsView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FavoriteFilmsViewInput: AnyObject {
    var output: FavoriteFilmsViewOutput? { get set }
    
    func updateTableView(with favoriteFilms: [Item])
}

protocol FavoriteFilmsViewOutput {
    
}

class FavoriteFilmsView: UIViewController, FavoriteFilmsViewInput {
    
    var favoriteFilms: [Item]?
    var output: FavoriteFilmsViewOutput?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.setupNavigation()
    }

    lazy var favoriteFilmsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FavoriteFilmCell.self, forCellReuseIdentifier: FavoriteFilmCell.reuseIdentifier)
        tableView.separatorStyle = .none
        return tableView
    }()
    
    func updateTableView(with favoriteFilms: [Item]) {
        self.favoriteFilms = favoriteFilms
        
        DispatchQueue.main.async {
            self.favoriteFilmsTableView.reloadData()

        }
    }
}
