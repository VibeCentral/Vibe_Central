//
//  Artist.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/24/21.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
