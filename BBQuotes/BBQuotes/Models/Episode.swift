//
//  Episode.swift
//  BBQuotes
//
//  Created by Akshay  on 2025-03-10.
//

import Foundation

struct Episode: Decodable {
    let episode: Int // 101 means Season 1 Episode 01, 512 means Season 5 Episode 12
    let title: String
    let image: URL
    let synopsis: String
    let writtenBy: String
    let directedBy: String
    let airDate: String
    
    var seasonEpisode: String {
        "Season \(episode / 100) Episode \(episode % 100)"
    }
}
