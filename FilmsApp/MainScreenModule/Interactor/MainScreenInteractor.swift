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
    func interactorDidFetchMainScreenInteractorOutput(with state: LoadingState)
}

final class MainScreenInteractor: MainScreenInteractorInput {
    weak var output: MainScreenInteractorOutput?
    
    func fetchDiscoverMovieData() {
        
        TheMovieDataBaseAPI.shared.getDiscoverMovies { [weak self] state in
            guard let self else { return }
            self.output?.interactorDidFetchMainScreenInteractorOutput(with: state)
        }
    }
}
