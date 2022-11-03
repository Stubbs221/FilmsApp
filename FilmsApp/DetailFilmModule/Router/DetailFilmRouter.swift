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
    
    var transitionDelegate: UIViewControllerTransitioningDelegate?
    
    func showPosterFullView(with poster: UIImage?) {
        let vc = PosterFullView(with: poster)
        
//        vc.transitioningDelegate = rootViewController
        
        vc.modalPresentationStyle = .custom
        
        rootViewController?.present(vc, animated: true)
    }
}
