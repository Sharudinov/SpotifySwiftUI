//
//  CategoryCell.swift
//  SpotifyApp
//
//  Created by Мурад on 26.06.2024.
//

import SwiftUI

struct CategoryCell: View {
    
    var title: String = "Audio"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .foregroundStyle(isSelected ? .myBlack : .myWhite)
            .background(isSelected ? .myGreen : .myGray)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 40) {
            CategoryCell(title: "Title 1", isSelected: true)
            CategoryCell(title: "Title 2", isSelected: false)
            CategoryCell(title: "Title 3", isSelected: true)
        }
    }
}
