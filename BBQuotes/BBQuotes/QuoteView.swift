//
//  QuoteView.swift
//  BBQuotes
//
//  Created by Akshay  on 2025-02-17.
//

import SwiftUI

struct QuoteView: View {
    let vm = ViewModal()
    let show: String
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(show.lowercased().replacingOccurrences(of: " ", with: ""))
            }
        }
    }
}

#Preview {
    QuoteView(show: "Breaking Bad")
        .preferredColorScheme(.dark)
}
