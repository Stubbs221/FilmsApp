//
//  FilmPicsPresenter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FilmPicsPresenterInput {
    var output: FilmPicsPresenterOutput? { get set }
}

protocol FilmPicsPresenterOutput {
    
}

final class FilmPicsPresenter: FilmPicsPresenterInput {
    var output: FilmPicsPresenterOutput?
    
    
    private weak var view: FilmPicsViewInput!
    private var interactor: FilmPicsInteractorInput
    private var router: FilmPicsRouterInput
    
    init(view: FilmPicsViewInput, interactor: FilmPicsInteractorInput, router: FilmPicsRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension FilmPicsPresenter: FilmPicsViewOutput {
    
}

extension FilmPicsPresenter: FilmPicsInteractorOutput {
    
}
