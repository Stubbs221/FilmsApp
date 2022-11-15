//
//  TabBarRouter.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

protocol TabBarRouterInput {
    var rootViewController: TabBarViewInput? { get set }
}

final class TabBarRouter: TabBarRouterInput {
    var rootViewController: TabBarViewInput?
    
    
}
