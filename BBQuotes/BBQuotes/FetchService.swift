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
    func fetchQuotes(from show: String) {
        // Build fetch url
        let quoteURL = baseURL.appending(path: "quotes/random")
        let fetchURL = quoteURL.appending(queryItems: [URLQueryItem(name: "production", value: show)])
            
        // Fetch data
        
        // Handle response
        
        // Decode data
        
        // Return quote
    }
}
