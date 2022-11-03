//
//  PosterFullModuleConfigurator.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 03.11.2022.
//

import UIKit

final class PosterFullModuleConfigurator {
    static func configure(using navigationFactory: NavigationFactory, with image: UIImage?) -> UIViewController {
        let view = PosterFullView(with: image)
        
        return navigationFactory(view)
    }
}
