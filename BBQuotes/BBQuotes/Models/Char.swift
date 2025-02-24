//
//  Char.swift
//  BBQuotes
//
//  Created by Akshay  on 2025-02-18.
//

import Foundation

struct Char: Decodable {
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let status: String
    let portrayedBy: String
    var death: Death?
}
