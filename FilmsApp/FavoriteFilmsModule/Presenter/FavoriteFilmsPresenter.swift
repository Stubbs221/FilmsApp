//
//  FavoriteFilmsPresenter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FavoriteFilmsPresenterInput {
    var output: FavoriteFilmsPresenterOutput? { get set }
}

protocol FavoriteFilmsPresenterOutput {
    
}

final class FavoriteFilmsPresenter: FavoriteFilmsPresenterInput {
    var output: FavoriteFilmsPresenterOutput?
    
    
    private weak var view: FavoriteFilmsViewInput!
    private var interactor: FavoriteFilmsInteractorInput
    private var router: FavoriteFilmsRouterInput
    
    init(view: FavoriteFilmsViewInput, interactor: FavoriteFilmsInteractorInput, router: FavoriteFilmsRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
        
        
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) {
            self.interactor.fetchFavoriteFilms()
        }
        
    }
}

extension FavoriteFilmsPresenter: FavoriteFilmsViewOutput {
    
}

extension FavoriteFilmsPresenter: FavoriteFilmsInteractorOutput {
    func interactorDidFetchFavorite(films: [Item]) {
        self.view.updateTableView(with: films)
    }
    
    
}
