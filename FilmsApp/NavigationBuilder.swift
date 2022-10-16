//
//  NavigationBuilder.swift
//
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

typealias NavigationFactory = (UIViewController) -> (UINavigationController)

class NavigationBuilder {
    static func build(rootView: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootView)
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationBar.barStyle = .black
        let largeTextStyleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white]
        navigationController.navigationBar.largeTitleTextAttributes = largeTextStyleAttributes
        
//        navigationController.tabBarItem.title
        
        
//        navigationController.tabBarItem.image = UIImage(systemName: "house")
        
        return navigationController
    }
}
