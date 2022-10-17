//
//  DetailFilmModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

final class DetailFilmModuleConfigurator {
    static func configure(using navigationFactory: NavigationFactory) -> UIViewController {
        let view = DetailFilmView()
        let interactor = DetailFilmInteractor()
        let router = DetailFilmRouter()
        
        let presenter = DetailFilmPresenter(view: view, interactor: interactor, router: router)
        
        view.output = presenter
        interactor.output = presenter
        
        router.rootViewController = view
        
        return navigationFactory(view)
    }
}
