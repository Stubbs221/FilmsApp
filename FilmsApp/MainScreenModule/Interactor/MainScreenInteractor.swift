//
//  MainScreenInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

protocol MainScreenInteractorInput {
    var output: MainScreenInteractorOutput? { get set }
    
//    func fetchData
}

protocol MainScreenInteractorOutput: AnyObject {
    
}

final class MainScreenInteractor: MainScreenInteractorInput {
    weak var output: MainScreenInteractorOutput?
    
    
}
