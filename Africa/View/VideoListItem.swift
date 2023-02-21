//
//  VideoListItem.swift
//  Africa
//
//  Created by Александр Карпов on 20.02.2023.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: Video
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(video.thumbnail)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(9)
                .overlay(
                Image(systemName: "play.circle")
                    .font(.largeTitle)
                    .shadow(radius: 4)
                )
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }
            Spacer()
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
