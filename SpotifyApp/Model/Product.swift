//
//  Product.swift
//  SpotifyApp
//
//  Created by Мурад on 26.06.2024.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let category: String
    let price: Double
    let stock: Int
    let brand: String?
    let images: [String]
    let thumbnail: String
    
    var firstImage: String {
        images.first ?? Constant.randomImage
    }

    enum CodingKeys: String, CodingKey {
        case id, title, description, category, price, stock, brand, images, thumbnail
    }
}
