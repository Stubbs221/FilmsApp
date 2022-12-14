//
//  MainScreenPresenter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

protocol MainScreenPresenterInput {
    var output: MainScreenPresenterOutput? { get set }
}

protocol MainScreenPresenterOutput: AnyObject {
    
}

final class MainScreenPresenter: MainScreenPresenterInput {
   weak var output: MainScreenPresenterOutput?
    
    private weak var view: MainScreenViewInput!
    private var interactor: MainScreenInteractorInput
    private var router: MainScreenRouterInput
    
    init(view: MainScreenViewInput, interactor: MainScreenInteractorInput, router: MainScreenRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    
}

extension MainScreenPresenter: MainScreenViewOutput {
    func viewIsReady() {
        self.interactor.fetchDiscoverMovieData()
    }
    
    
}

extension MainScreenPresenter: MainScreenInteractorOutput {
    func interactorDidFetchMainScreenInteractorOutput(with state: LoadingState) {
        switch state {
        case .success(let discoverMovieModel):
            self.view.filmsArray = discoverMovieModel
        case .failure(let error):
            self.view.errorDescription = error.description
        case .loading:
            break
        }
    }
    
 
    
    
}
