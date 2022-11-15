//
//  TabBarView.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 15.11.2022.
//

import UIKit

protocol TabBarViewInput {
    var output: TabBarViewOutput? { get set }
}

protocol TabBarViewOutput {
    
}

class TabBarView: UITabBarController, TabBarViewInput {
    
    
    var output: TabBarViewOutput?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addTabs()
    }
    
    private func addTabs() {
        let mainScreen = MainScreenModuleConfigurator.configure(using: NavigationBuilder.build)
        let mainScreenTabBarItem = UITabBarItem(title: "Обозреватель", image: UIImage(systemName: "text.below.photo.fill"), tag: 0)
        mainScreen.tabBarItem = mainScreenTabBarItem
        
        let favoriteFilmsScreen = FavoriteFilmModuleConfigurator.configure(using: NavigationBuilder.build)
        let favotireFilmsScreenTabBarItem = UITabBarItem(title: "Избранное", image: UIImage(systemName: "heart.fill"), tag: 1)
        favoriteFilmsScreen.tabBarItem = favotireFilmsScreenTabBarItem
        
        self.viewControllers = [
            mainScreen, favoriteFilmsScreen
        ]
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
