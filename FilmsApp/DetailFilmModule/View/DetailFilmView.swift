//
//  DetailFilmView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol DetailFilmViewInput: AnyObject, UIViewControllerTransitioningDelegate, UIViewController {
    var output: DetailFilmViewOutput? { get set }
    var item: MainScreenItemModel? { get set }
    
//    var cameFromFav: Bool { get set }
    init(item: MainScreenItemModel)
}

protocol DetailFilmViewOutput {
    func userDidTapOnPoster()
}

class DetailFilmView: UIViewController, DetailFilmViewInput {
    

    var item: MainScreenItemModel?
    
//    пришел ли пользователь с экрана избранных фильмов
//    var cameFromFav: Bool
    
    var transition: RoundingTransition = RoundingTransition()
    
//    MARK: - mock data object
    
    var mockFotagesArray: [UIImage] = Array(repeating: UIImage(named: "testImage")!, count: 10)
    
    var output: DetailFilmViewOutput?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureViewData(with: item)
        setupUI()
        setupNavigation(with: item!.originalTitle)
        view.backgroundColor = .white
        
//        if self.cameFromFav {
//
//        }
        
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionProfile = .show
        transition.start = filmPosterImageView.center
        transition.roundColor = .lightGray
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionProfile = .cancel
        transition.start = filmPosterImageView.center
        transition.roundColor = .lightGray
        
        return transition
    }
    
    required init(item: MainScreenItemModel) {
//        self.cameFromFav = cameFromFav
        super.init(nibName: nil, bundle: nil)
        self.item = item
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var detailFilmScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    lazy var detailFilmContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var filmPosterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemGray5
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(gestureForFilmPoster)
        return imageView
    }()
    
    lazy var gestureForFilmPoster: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(filmPostedDidTapped))
//        gesture.
        gesture.numberOfTapsRequired = 2
        return gesture
    }()
    
    @objc func filmPostedDidTapped() {
        print("test")
        self.output?.userDidTapOnPoster()
    }
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
    
    lazy var fotagesFromFilmingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Изображения"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    lazy var fotagesCountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.textAlignment = .right
        return label
    }()
    
    lazy var openFotagesFromFilmingButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        return button
    }()
    
//    MARK: - Footage from filming CollectionView with horizontal scrolling
    lazy var fotagesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(FotageFromFilmingCellCollectionViewCell.self, forCellWithReuseIdentifier: FotageFromFilmingCellCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
//    MARK: - Block of description views
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Описание"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    lazy var descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.systemFont(ofSize: 16)
//        textView.text = 
        textView.sizeToFit()
        textView.isScrollEnabled = false
        textView.isUserInteractionEnabled = false
        textView.isEditable = false
        textView.backgroundColor = UIColor.systemGray5
        textView.layer.cornerRadius = 15
        return textView
    }()
}
