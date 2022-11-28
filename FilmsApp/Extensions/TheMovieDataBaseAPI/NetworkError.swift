//
//  NetworkError.swift
//  FilmsApp
//
//  Created by Vasily Maslov on 28.11.2022.
//

import Foundation

enum NetworkError: Error {
    case invalidURL, connectionFailed, unableToDecodeData
    
    public var description: String {
        switch self {
        case .invalidURL:
            return "Invalide URL"
        case .connectionFailed:
            return "WaitingForNetwork"
        case .unableToDecodeData:
            return "Wrong data type received"
        }
    }
    
}
