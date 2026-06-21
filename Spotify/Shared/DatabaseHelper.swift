//
//  DatabaseHelper.swift
//  Spotify
//
//  Created by Maya Ghamloush on 20/06/2026.
//

import Foundation

struct DatabaseHelper{
    
    func getProducts() async throws -> [Product]{
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        return products.products
    }
    
}

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int?
}

// MARK: - Product
struct Product: Codable {
    let id: Int?
    let title, description: String?
    //let category: Category?
    let price, discountPercentage, rating: Double?
    let stock: Int?
    let brand, sku: String?
    let images: [String]?
    let thumbnail: String?
}
 
