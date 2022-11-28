//
//  LoadingState.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 28.11.2022.
//

import Foundation

enum LoadingState {
    case loading, success(DiscoverMovieModel), failure(NetworkError)
}


