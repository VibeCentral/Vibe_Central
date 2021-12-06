//
//  SearchResults.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/15/21.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
