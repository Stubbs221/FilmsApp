//
//  FullPicView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

protocol FullPicViewInput: AnyObject {
    var output: FullPicViewOutput? { get set }
}

protocol FullPicViewOutput {
    
}
class FullPicView: UIViewController, FullPicViewInput {
    var output: FullPicViewOutput?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
