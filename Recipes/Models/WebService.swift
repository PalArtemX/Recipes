//
//  WebService.swift
//  Recipes
//
//  Created by Artem Paliutin on 16/03/2022.
//

import Foundation


enum NetworkError: Error {
    case badRequest
    case decodingError
}


class WebService {
    
    func get<T: Codable>(url: URL, pars: (Data) -> T?) async throws -> T {
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        if (response as? HTTPURLResponse)?.statusCode != 200 {
            throw NetworkError.badRequest
        }
        
        guard let result = pars(data) else {
            throw NetworkError.decodingError
        }
        
        return result
    }
}
