//
//  TabBarModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

final class TabBarModulerConfigurator {
    static func configure() -> UIViewController {
        let view = TabBarView()
        let interactor = TabBarInteractor()
        let router = TabBarRouter()
        
        let presenter = TabBarPresenter(view: view, interactor: interactor, router: router)
        router.rootViewController = view
        view.output = presenter
        interactor.output = presenter
        
        return view
    }
}
