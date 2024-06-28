//
//  ImageLoaderView.swift
//  SpotifyApp
//
//  Created by Мурад on 26.06.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    var urlString: String = Constant.randomImage
    
    var body: some View {
        WebImage(url: URL(string: urlString))
            .resizable()
            .indicator(.activity)
            .scaledToFit()
         //   .frame(width: 200, height: 200)
    }
}

#Preview {
    ImageLoaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
    
}
