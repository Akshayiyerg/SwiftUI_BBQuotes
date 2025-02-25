//
//  ViewModal.swift
//  BBQuotes
//
//  Created by Akshay  on 2025-02-24.
//

import Foundation

@Observable
@MainActor
class ViewModal {
    enum FetchStatus {
        case notStarted
        case fetching
        case success
        case failed(error: Error)
    }
    
    private(set) var status: FetchStatus = .notStarted
    
    private let fetcher = FetchService()
    
    var quote: Quote
    var character: Char
    
    init(quote: Quote, character: Char) {
        self.quote = quote
        self.character = character
    }
}
