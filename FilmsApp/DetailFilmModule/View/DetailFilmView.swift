//
//  DetailFilmView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol DetailFilmViewInput: AnyObject {
    var output: DetailFilmViewOutput? { get set }
}

protocol DetailFilmViewOutput {
    
}

class DetailFilmView: UIViewController, DetailFilmViewInput {
    
    
    var output: DetailFilmViewOutput?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }

}
