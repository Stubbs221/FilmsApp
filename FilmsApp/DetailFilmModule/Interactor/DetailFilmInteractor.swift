//
//  DetailFilmInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol DetailFilmInteractorInput {
    var output: DetailFilmInteractorOutput? { get set }
}

protocol DetailFilmInteractorOutput: AnyObject {
    
}

final class DetailFilmInteractor: DetailFilmInteractorInput {
    weak var output: DetailFilmInteractorOutput?
    
    
}
