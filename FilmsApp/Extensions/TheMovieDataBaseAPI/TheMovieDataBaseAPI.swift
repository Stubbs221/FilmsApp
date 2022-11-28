//
//  TheMovieDataBaseAPI.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 28.11.2022.
//

import UIKit

class TheMovieDataBaseAPI {
    static let shared = TheMovieDataBaseAPI()
    
    private init() {}
    
    let imagePathPrefix = "https://image.tmdb.org/t/p/original"
    
    let apiKey = "faefbd45b58a878d874d79185246fe2b"
    
    func getDiscoverMovies(completion: @escaping (LoadingState) -> Void) {
        
        
        guard let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=\(self.apiKey)&language=ru-RU&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate") else {
            completion(.failure(.invalidURL))
            return
            
        }
        print(url)

        let request = URLRequest(url: url)
        
        
        let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.connectionFailed))
                return
            }
            
            print(data)
            do {
                let fetchedData = try JSONDecoder().decode(DiscoverMovieModel.self, from: data)
                completion(.success(fetchedData))
            } catch let jsonError as NSError {
                print("Json decode failed: \(jsonError)")
                completion(.failure(.unableToDecodeData))
            }
//            guard let fetchedData = try? JSONDecoder().decode(DiscoverMovieModel.self, from: data) else {
//
//                return
//            }
            
            
        }.resume()
    }
    
    func getImage(by path: String, completion: @escaping (UIImage?) -> Void) {
        guard let url = URL(string: imagePathPrefix + path) else { return }
        let request = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil)
                return
            }
            
            completion(UIImage(data: data))
        }.resume()
    }
}
