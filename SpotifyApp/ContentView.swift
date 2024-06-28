//
//  ContentView.swift
//  SpotifyApp
//
//  Created by Мурад on 26.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(products) { product in
                    Text(product.title)
                }
            }
        }
        .padding()
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
           users = try await DatabaseManager().getUsers()
            products = try await DatabaseManager().getProducts()
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
