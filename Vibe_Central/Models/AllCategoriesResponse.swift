//
//  AllCategoriesResponse.swift
//  Vibe_Central
//
//  Created by Okera Murray on 11/15/21.

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
