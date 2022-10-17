//
//  FavoriteFilmsInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FavoriteFilmsInteractorInput {
    var output: FavoriteFilmsInteractorOutput? { get set }
}

protocol FavoriteFilmsInteractorOutput: AnyObject {
    
}

final class FavoriteFilmsInteractor: FavoriteFilmsInteractorInput {
    var output: FavoriteFilmsInteractorOutput?
    
    
}
