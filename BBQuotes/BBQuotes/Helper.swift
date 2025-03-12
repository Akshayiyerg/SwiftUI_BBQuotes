//
//  Helper.swift
//  BBQuotes
//
//  Created by Akshay  on 2025-03-10.
//

extension String {
    func removeSpaces() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }
    
    func removeCaseAndSpace() -> String {
        self.removeSpaces().lowercased()
    }
}
