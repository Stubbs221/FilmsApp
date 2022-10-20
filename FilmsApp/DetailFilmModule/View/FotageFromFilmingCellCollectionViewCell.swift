//
//  FotageFromFilmingCellCollectionViewCell.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 20.10.2022.
//

import UIKit

class FotageFromFilmingCellCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "FotageCell"
    
    lazy var fotageImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemGray6
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(fotageImageView)
        NSLayoutConstraint.activate([
            fotageImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            fotageImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            fotageImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            fotageImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
