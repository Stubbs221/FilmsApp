//
//  FilmPicsInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FilmPicsInteractorInput {
    var output: FilmPicsInteractorOutput? { get set }
}

protocol FilmPicsInteractorOutput: AnyObject {
    
}

final class FilmPicsInteractor: FilmPicsInteractorInput {
    var output: FilmPicsInteractorOutput?
    
    
}
