//
//  RecentsCell.swift
//  SpotifyApp
//
//  Created by Мурад on 28.06.2024.
//

import SwiftUI

struct RecentsCell: View {
    
    var imageName: String = Constant.randomImage
    var title: String = "Text random"
    
    
    var body: some View {
        HStack(spacing: 16) {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .background(Color.myWhite)
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .cornerRadius(6)
    }
}

#Preview {
    RecentsCell()
}
