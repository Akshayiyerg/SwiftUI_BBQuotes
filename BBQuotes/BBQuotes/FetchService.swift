//
//  FetchService.swift
//  BBQuotes
//
//  Created by Akshay  on 2025-02-21.
//

import Foundation

struct FetchService {
    
    enum FetchError: Error {
        case badResponse
    }
    
    let baseURL = URL(string: "https://breaking-bad-api-six.vercel.app/api")!
    
    // https://breaking-bad-api-six.vercel.app/api/quotes/random?production=Breaking+Bad
    func fetchQuotes(from show: String) async throws -> Quote {
        // Build fetch url
        let quoteURL = baseURL.appending(path: "quotes/random")
        let fetchURL = quoteURL.appending(queryItems: [URLQueryItem(name: "production", value: show)])
            
        // Fetch data
        let (data, response) = try await URLSession.shared.data(from: fetchURL)
        
        // Handle response
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw FetchError.badResponse }
        
        // Decode data
        let quote = try JSONDecoder().decode(Quote.self, from: data)
        
        // Return quote
        return quote
    }
}
