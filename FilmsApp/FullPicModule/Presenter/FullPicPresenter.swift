//
//  FullPicPresenter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FullPicPresenterInput {
    var output: FullPicPresenterOutput? { get set }
}

protocol FullPicPresenterOutput {
    
}

final class FullPicPresenter: FullPicPresenterInput {
    var output: FullPicPresenterOutput?
    
    
    
    private weak var view: FullPicViewInput!
    private var router: FullPicRouterInput
    private var interactor: FullPicInteractorInput
    
    init(view: FullPicViewInput, interactor: FullPicInteractorInput, router: FullPicRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension FullPicPresenter: FullPicViewOutput {
    
}

extension FullPicPresenter: FullPicInteractorOutput {
    
}
