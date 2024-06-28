//
//  DatabaseManager.swift
//  SpotifyApp
//
//  Created by Мурад on 26.06.2024.
//

import Foundation

struct DatabaseManager {
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://dummyjson.com/products/search?q=phone") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let productsArray = try JSONDecoder().decode(ProductArray.self, from: data)
            return productsArray.products
        } catch {
            print("Error decoding JSON: \(error)")
            throw error
        }
    }
    
    func getUsers() async throws -> [User] {
        guard let url = URL(string: "https://dummyjson.com/users") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let users = try JSONDecoder().decode(UserArray.self, from: data)
        return users.users
    }
}
