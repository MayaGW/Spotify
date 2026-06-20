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
    
    var body: some View {
        WebImage(url: URL(string: urlString))
            
    }
}

#Preview {
    ImageLoaderView()
}
