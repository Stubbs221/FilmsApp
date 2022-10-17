//
//  FullPicInteractor.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FullPicInteractorInput {
    var output: FullPicInteractorOutput? { get set }
}

protocol FullPicInteractorOutput: AnyObject {
    
}

final class FullPicInteractor: FullPicInteractorInput {
    weak var output: FullPicInteractorOutput?
    
    
}
