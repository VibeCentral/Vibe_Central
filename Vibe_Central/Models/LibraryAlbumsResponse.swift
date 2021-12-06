//
//  LibraryAlbumsResponse.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/15/21.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
