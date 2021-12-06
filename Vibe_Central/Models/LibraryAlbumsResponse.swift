//
//  LibraryAlbumsResponse.swift
//  Vibe_Central
//
//  Created by Okera Murray on 12/4/21.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
