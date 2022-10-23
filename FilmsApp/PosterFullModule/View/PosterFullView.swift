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
//        imageView.backgroundColor = .systemGray6
//        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var closePosterViewButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.widthAnchor.constraint(equalTo: button.heightAnchor).isActive = true
        button.layer.cornerRadius = 15
        button.tintColor = .systemGray2
        button.backgroundColor = UIColor.systemGray6
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.addTarget(self, action: #selector(closePosterViewButtonPressed), for: .touchUpInside)
        return button
    }()
    
    init(with poster: UIImage?){
        self.posterImage = poster
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func closePosterViewButtonPressed() {
        self.dismiss(animated: true)
    }
}
