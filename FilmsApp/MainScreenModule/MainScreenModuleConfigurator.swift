//
//  MainScreenModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

final class MainScreenModuleConfigurator {
    static func configure(using navigationFactory: NavigationFactory) -> UIViewController {
        let view = MainScreenView()
        let interactor = MainScreenInteractor()
        let router = MainScreenRouter()
        
        let presenter = MainScreenPresenter(view: view, interactor: interactor, router: router)
        
        view.output = presenter
        interactor.output = presenter
        router.rootViewController = view
        
        return navigationFactory(view)
    }
}

