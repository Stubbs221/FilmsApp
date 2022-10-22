//
//  DetailFilmPresenter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol DetailFilmPresenterInput {
    var output: DetailFilmPresenterOutput? { get set }
}

protocol DetailFilmPresenterOutput {
    
}

final class DetailFilmPresenter: DetailFilmPresenterInput {
    
    
    var output: DetailFilmPresenterOutput?
    
    private weak var view: DetailFilmViewInput!
    private var interactor: DetailFilmInteractorInput
    private var router: DetailFilmRouterInput
    
    init(view: DetailFilmViewInput, interactor: DetailFilmInteractorInput, router: DetailFilmRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    
}

extension DetailFilmPresenter: DetailFilmViewOutput {
    
}

extension DetailFilmPresenter: DetailFilmInteractorOutput {
    func userDidTapOnPoster() {
        router.showPosterFullView(with: UIImage(named: "testImage"))
    }
}
