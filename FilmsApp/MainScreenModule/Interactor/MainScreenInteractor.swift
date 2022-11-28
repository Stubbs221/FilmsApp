//
//  MainScreenInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 16.10.2022.
//

import UIKit

protocol MainScreenInteractorInput {
    var output: MainScreenInteractorOutput? { get set }
    
    func fetchDiscoverMovieData()
}

protocol MainScreenInteractorOutput: AnyObject {
    func interactorDidFetchMainScreenInteractorOutput(with data: DiscoverMovieModel?)
}

final class MainScreenInteractor: MainScreenInteractorInput {
    weak var output: MainScreenInteractorOutput?
    
    func fetchDiscoverMovieData() {
        self.output?.interactorDidFetchMainScreenInteractorOutput(with: TheMovieDataBaseAPI.shared.getDiscoverMovies())
    }
}
