//
//  PosterFullView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 20.10.2022.
//

import UIKit

class PosterFullView: UIViewController {

    var posterImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.posterFullImageView.image = posterImage
        self.setupUI()
    }
    
    lazy var posterFullImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    init(with poster: UIImage?){
        self.posterImage = poster
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
