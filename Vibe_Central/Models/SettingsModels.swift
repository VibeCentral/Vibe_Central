//
//  SettingsModels.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/15/21.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
