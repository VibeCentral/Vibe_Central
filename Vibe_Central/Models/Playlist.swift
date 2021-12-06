//
//  Playlist.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/24/21.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}

