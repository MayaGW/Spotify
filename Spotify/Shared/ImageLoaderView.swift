//
//  ImageLoaderView.swift
//  Spotify
//
//  Created by Maya Ghamloush on 20/06/2026.
//

import SwiftUI
import SDWebImageSwiftUI
struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    
    var body: some View {
        
        Rectangle()
            .opacity(0.001)
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false)
            }
            .clipped()
        

            
    }
}

#Preview {
   ImageLoaderView()
  //  Rectangle()
        .clipShape(.rect(cornerRadius: 20))
        .padding(40)
        .padding(.vertical, 60)
}
