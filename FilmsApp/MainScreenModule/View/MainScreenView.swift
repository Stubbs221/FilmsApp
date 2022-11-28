//
//  MainScreenView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

protocol MainScreenViewInput: AnyObject {
    var output: MainScreenViewOutput? { get set }
    
    var filmsArray: DiscoverMovieModel? { get set }
    var errorDescription: String? { get set }
}

protocol MainScreenViewOutput {
    func viewIsReady()
}

class MainScreenView: UIViewController, MainScreenViewInput {
    var output: MainScreenViewOutput?
    

    var filmsArray: DiscoverMovieModel? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()

            }
        }
    }
    var errorDescription: String? {
        didSet {
            DispatchQueue.main.async {
                self.errorDescriptionView.addSubview(self.errorDescriptionLabel)
                self.errorDescriptionLabel.text = self.errorDescription!
                self.view.addSubview(self.errorDescriptionView)
            }
           
        }
    }
    
//    var mockDataArray: [MainScreenItemModel] = Array(repeating: MainScreenItemModel(filmPosterImage: UIImage(named: "testImage")!, originalTitle: "Slime", releaseDate: "2009", rating: "9/10", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at lectus pellentesque, pellentesque ex eu, laoreet purus. Cras vel ipsum rutrum, tincidunt lectus sed, vehicula felis. Nulla faucibus dignissim purus ac mattis. Nunc ultrices luctus venenatis. Nulla sit amet magna venenatis, mollis ex sed, lacinia justo. Nunc imperdiet sit amet."), count: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupNavigation()
        DispatchQueue.global(qos: .userInitiated).async {
            self.output?.viewIsReady()
        }
        
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
    
    lazy var errorDescriptionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var errorDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.center = errorDescriptionView.center
        label.font = UIFont.systemFont(ofSize: 22)
        return label
    }()
}
