//
//  TabBarInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

protocol TabBarInteractorInput {
    var output: TabBarInteractorOutput? { get set }
}

protocol TabBarInteractorOutput: AnyObject {
    
}

final class TabBarInteractor: TabBarInteractorInput {
    weak var output: TabBarInteractorOutput?
}
