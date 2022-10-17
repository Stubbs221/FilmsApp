//
//  FilmPicsModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

final class FilmPicsModuleConfigurator {
    static func configure(using navigationFactory: NavigationFactory) -> UIViewController {
        let view = FilmPicsView()
        let interactor = FilmPicsInteractor()
        let router = FilmPicsRouter()
        
        let presenter = FilmPicsPresenter(view: view, interactor: interactor, router: router)
        
        interactor.output = presenter
        view.output = presenter
        
        router.rootViewController = view
        
        return navigationFactory(view)
    }
}
