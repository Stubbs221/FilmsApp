//
//  TabBarPresenter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

protocol TabBarPresenterInput: AnyObject {
    var output: TabBarPresenterOutput? { get set }
    
    var view: TabBarViewInput { get set }
    var interactor: TabBarInteractorInput { get set }
    var router: TabBarRouterInput { get set }
    
    init(view: TabBarViewInput, interactor: TabBarInteractorInput, router: TabBarRouterInput)
}

protocol TabBarPresenterOutput {
    
}

final class TabBarPresenter: TabBarPresenterInput {
    var output: TabBarPresenterOutput?
    
    var view: TabBarViewInput
    
    var interactor: TabBarInteractorInput
    
    var router: TabBarRouterInput
    
    init(view: TabBarViewInput, interactor: TabBarInteractorInput, router: TabBarRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    
}

extension TabBarPresenter: TabBarViewOutput {
    
}

extension TabBarPresenter: TabBarInteractorOutput {
    
}
