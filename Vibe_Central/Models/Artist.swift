//
//  Artist.swift
//  Vibe_Central
//
//  Created by Okera Murray on 12/4/21.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
