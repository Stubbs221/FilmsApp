//
//  DetailViewRouter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol DetailFilmRouterInput {
    func showPosterFullView(with poster: UIImage?)
}

final class DetailFilmRouter: DetailFilmRouterInput {
    var rootViewController: UIViewController?
    
    func showPosterFullView(with poster: UIImage?) {
        let vc = PosterFullView(with: poster)
//        vc.modalPresentationStyle = .popover
        
        rootViewController?.present(vc, animated: true)
    }
}
