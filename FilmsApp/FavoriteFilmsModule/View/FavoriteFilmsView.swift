//
//  FavoriteFilmsView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FavoriteFilmsViewInput: AnyObject {
    var output: FavoriteFilmsViewOutput? { get set }
}

protocol FavoriteFilmsViewOutput {
    
}

class FavoriteFilmsView: UIViewController, FavoriteFilmsViewInput {
    var output: FavoriteFilmsViewOutput?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
