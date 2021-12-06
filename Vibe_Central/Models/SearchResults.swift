//
//  SearchResults.swift
//  Vibe_Central
//
//  Created by Okera Murray on 12/4/21.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
