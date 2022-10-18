//
//  DetailFilmView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol DetailFilmViewInput: AnyObject {
    var output: DetailFilmViewOutput? { get set }
    var item: MainScreenItemModel? { get set }
    
    init(item: MainScreenItemModel)
}

protocol DetailFilmViewOutput {
    
}

class DetailFilmView: UIViewController, DetailFilmViewInput {
    
    
    var item: MainScreenItemModel?
    
    
    
    var output: DetailFilmViewOutput?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewData(with: item)
        setupUI()
        setupNavigation(with: item!.originalTitle)
        view.backgroundColor = .white
    }
    
    required init(item: MainScreenItemModel) {
        
        super.init(nibName: nil, bundle: nil)
        self.item = item
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var filmPosterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemGray5
        return imageView
    }()
    
    lazy var originalTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.text = "test"

        return label
    }()
    
    lazy var releaseDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = .systemGray
        label.text = "test"
        return label
    }()
    
    lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "test"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
//        label.backgroundColor = .systemGray3
//        label.textColor = .white
        label.textAlignment = .center
//        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        label.widthAnchor.constraint(equalToConstant: 50).isActive = true
        label.layer.masksToBounds = true

        label.layer.cornerRadius = 5
        return label
    }()
}
