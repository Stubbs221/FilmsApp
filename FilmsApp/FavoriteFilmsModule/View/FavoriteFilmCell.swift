//
//  FavoriteFilmCell.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

class FavoriteFilmCell: UITableViewCell {
    
    weak var parentVCDelegate: FavoriteFilmsViewInput?
    
    static let reuseIdentifier = "Cell"
    
    private lazy var filmPosterView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    private lazy var filmTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        return label
    }()
    
    private lazy var filmYearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = .systemGray3
        return label
    }()
    
    private lazy var filmRatingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    private lazy var favoriteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(favoriteButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with item: Item, parentVC: FavoriteFilmsViewInput) {
        
        self.parentVCDelegate = parentVC
        self.filmPosterView.image = UIImage(named: item.testPic ?? "errorImage")
        self.filmTitleLabel.text = item.testTitle ?? "Без названия"
        self.filmYearLabel.text = String(item.testYear ?? 0) + " год"
        self.filmRatingLabel.text = String(item.testRating ?? 0.0) + "/10"
        self.favoriteButton.setImage(UIImage(systemName: (item.isLiked ? "heart" : "heart.filled")), for: .normal)
        
        setupUI()
    }
    
    private func setupUI() {
        backgroundColor = .systemGray3
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)])
        
        contentView.addSubview(filmPosterView)
        contentView.addSubview(filmTitleLabel)
        contentView.addSubview(filmYearLabel)
        contentView.addSubview(filmRatingLabel)
        contentView.addSubview(favoriteButton)
        
        NSLayoutConstraint.activate([
            filmPosterView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            filmPosterView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            filmPosterView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            filmPosterView.widthAnchor.constraint(equalToConstant: (self.bounds.height - 10) * 0.66) ])
        NSLayoutConstraint.activate([
            filmTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            filmTitleLabel.leadingAnchor.constraint(equalTo: filmPosterView.trailingAnchor, constant: 10)])
        NSLayoutConstraint.activate([
            filmYearLabel.leadingAnchor.constraint(equalTo: filmTitleLabel.leadingAnchor),
            filmYearLabel.topAnchor.constraint(equalTo: filmTitleLabel.bottomAnchor, constant: 0)])
        NSLayoutConstraint.activate([
            filmRatingLabel.leadingAnchor.constraint(equalTo: filmTitleLabel.leadingAnchor),
            filmRatingLabel.bottomAnchor.constraint(equalTo: filmPosterView.bottomAnchor, constant: -10)])
        NSLayoutConstraint.activate([
            favoriteButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            favoriteButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            favoriteButton.heightAnchor.constraint(equalToConstant: 50),
            favoriteButton.widthAnchor.constraint(equalTo: favoriteButton.heightAnchor)])
    }
    
    @objc func favoriteButtonPressed() {
        
    }
}
