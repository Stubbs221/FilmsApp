//
//  FullPicModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

final class FullPicModuleConfigurator {
    static func configure(using navigationFactory: NavigationFactory) -> UIViewController {
        let view = FullPicView()
        let interactor = FullPicInteractor()
        let router = FullPicRouter()
        
        let presenter = FullPicPresenter(view: view, interactor: interactor, router: router)
        
        view.output = presenter
        interactor.output = presenter
        router.rootViewController = view
        return navigationFactory(view)
    }
}
