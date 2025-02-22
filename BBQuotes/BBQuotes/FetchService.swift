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
    
    func fetchQuotes(from shows: String) {
        // Build fetch url
        
        // Fetch data
        
        // Handle response
        
        // Decode data
        
        // Return quote
    }
}
