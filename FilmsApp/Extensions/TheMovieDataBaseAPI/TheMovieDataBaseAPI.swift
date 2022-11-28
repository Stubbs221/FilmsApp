//
//  TheMovieDataBaseAPI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 28.11.2022.
//

import Foundation

class TheMovieDataBaseAPI {
    static let shared = TheMovieDataBaseAPI()
    
    private init() {}
    
    let imagePathPrefix = "https://image.tmdb.org/t/p/original"
    
    let apiKey = "faefbd45b58a878d874d79185246fe2b"
    
    func getDiscoverMovies(completion: @escaping (LoadingState) -> Void) {
        
        var discoverMovieData: DiscoverMovieModel? = nil
        guard let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=\(self.apiKey)&language=ru-RU&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate") else {
            return nil
            
        }
        
        let request = URLRequest(url: url)
        
        
        let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                return
            }
            
            guard let fetchedData = try? JSONDecoder().decode(DiscoverMovieModel.self, from: data) else {
                return
            }
            discoverMovieData = fetchedData
        }.resume()
        
        
        return discoverMovieData
    }
}
