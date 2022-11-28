//
//  JSONModel.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import Foundation

class JSONModel: Codable {
    var original_title: String?
    var poster_path: String?
    var release_date: String?
    var overview: String?
    var vote_average: Double?
    var backdrop_path: String?
}

struct DiscoverMovieModel: Codable {
    var pages: Int
    var results: [Movie]
}

struct Movie: Codable {
    var adult: Bool
    var backDropPath: String
    var genreIDs: [Int]
    var id: Int
    var originalLanguage: String
    var originalTitle: String
    var overview: String
    var popularity: Float
    var posterPath: String
    var releaseDate: String
    var title: String
    var video: Bool
    var voteAverage: Float
    var voteCount: Int
    
    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backDropPath = "backdrop_path"
        case genreIDs = "genre_ids"
        case id = "id"
        case originalLanguage = "originalLanguage"
        case originalTitle = "original_title"
        case overview = "overview"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}


