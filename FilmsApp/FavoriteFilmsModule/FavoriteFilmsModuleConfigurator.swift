//
//  FavoriteFilmsModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

final class FavoriteFilmModuleConfigurator {
    static func configure(using navigationFactory: NavigationFactory) -> UIViewController {
        let view = FavoriteFilmsView()
        let interactor = FavoriteFilmsInteractor()
        let router = FavoriteFilmsRouter()
        
        let presenter = FavoriteFilmsPresenter(view: view, interactor: interactor, router: router)
        
        view.output = presenter
        interactor.output = presenter
        router.rootViewController = view
        return navigationFactory(view)
    }
}
