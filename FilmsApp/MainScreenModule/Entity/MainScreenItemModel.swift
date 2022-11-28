//
//  MainScreenItemModel.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 17.10.2022.
//

import UIKit

struct MainScreenItemModel {
    var id: Int
    var filmPosterImage: UIImage
    var originalTitle: String
    var releaseDate: String
    var rating: String
    var description: String
    
    
}

//struct Model {
//    var testArray: [Item] = [
//        Item(id: 0, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),
//        Item(id: 1, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: false),
//        Item(id: 2, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: false),
//        Item(id: 3, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),
//        Item(id: 4, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),
//        Item(id: 5, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),
//        Item(id: 6, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),
//        Item(id: 7, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),
//        Item(id: 8, testPic: "testImage", testTitle: "Фильм 1", testYear: 1999, testRating: 7.0, isLiked: true),]
//
//}

struct Item {
    var id: Int?
    var testPic: String?
    var testTitle: String?
    var testYear: Int?
    var testRating: Double?
    var isLiked: Bool
    
    init(id: Int? = nil, testPic: String? = nil, testTitle: String? = nil, testYear: Int? = nil, testRating: Double? = nil, isLiked: Bool) {
        self.id = id
        self.testPic = testPic
        self.testTitle = testTitle
        self.testYear = testYear
        self.testRating = testRating
        self.isLiked = isLiked
    }
    
}
