//
//  Product.swift
//  Spotify
//
//  Created by Maya Ghamloush on 21/06/2026.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand, sku: String
    let images: [String]
    let thumbnail: String
}
