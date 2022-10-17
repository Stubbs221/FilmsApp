//
//  MainScreenCollectionViewCell.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

class MainScreenCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "Cell"
    
    
    
    
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
        label.backgroundColor = .systemGray3
        label.textColor = .white
        label.textAlignment = .center
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.widthAnchor.constraint(equalToConstant: 50).isActive = true
        label.layer.masksToBounds = true

        label.layer.cornerRadius = 5
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(filmPosterImageView)
        contentView.addSubview(originalTitleLabel)
        contentView.addSubview(releaseDateLabel)
        contentView.addSubview(ratingLabel)
        
        NSLayoutConstraint.activate([
            filmPosterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            filmPosterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            filmPosterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            filmPosterImageView.heightAnchor.constraint(equalToConstant: contentView.frame.height * 0.7)
        ])
        NSLayoutConstraint.activate([
            originalTitleLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            originalTitleLabel.trailingAnchor.constraint(equalTo: filmPosterImageView.trailingAnchor),
            originalTitleLabel.topAnchor.constraint(equalTo: filmPosterImageView.bottomAnchor, constant: 5)
        ])
        NSLayoutConstraint.activate([
            releaseDateLabel.leadingAnchor.constraint(equalTo: filmPosterImageView.leadingAnchor),
            releaseDateLabel.trailingAnchor.constraint(equalTo: filmPosterImageView.trailingAnchor),
            releaseDateLabel.topAnchor.constraint(equalTo: originalTitleLabel.bottomAnchor, constant: 5)])
        NSLayoutConstraint.activate([
            ratingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            ratingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12)])
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
