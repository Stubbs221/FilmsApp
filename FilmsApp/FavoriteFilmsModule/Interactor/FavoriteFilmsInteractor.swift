//
//  FavoriteFilmsInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FavoriteFilmsInteractorInput {
    var output: FavoriteFilmsInteractorOutput? { get set }
    
    func fetchFavoriteFilms()
}

protocol FavoriteFilmsInteractorOutput: AnyObject {
    func interactorDidFetchFavorite(films: [Item])
}

final class FavoriteFilmsInteractor: FavoriteFilmsInteractorInput {
    var output: FavoriteFilmsInteractorOutput?
    
    let testFavorites: [Item] = Array(repeating: Item(id: 0, testPic: "testImage", testTitle: "Slime", testYear: 2009, testRating: 7.0, isLiked: true), count: 9)
    
    func fetchFavoriteFilms() {
        self.output?.interactorDidFetchFavorite(films: testFavorites)
    }
}
