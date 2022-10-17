//
//  MainScreenView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

protocol MainScreenViewInput: AnyObject {
    var output: MainScreenViewOutput? { get set }
}

protocol MainScreenViewOutput {
    
}

class MainScreenView: UIViewController, MainScreenViewInput {
    var output: MainScreenViewOutput?
    

    var mockDataArray: [MainScreenItemModel] = Array(repeating: MainScreenItemModel(filmPosterImage: UIImage(named: "testImage")!, originalTitle: "Slime", releaseDate: "2009", rating: "9/10"), count: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupNavigation()
        
        
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(MainScreenCollectionViewCell.self, forCellWithReuseIdentifier: MainScreenCollectionViewCell.reuseIdentifier)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.delegate = self
        return searchBar
    }()
}
