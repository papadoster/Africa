//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Александр Карпов on 21.02.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let video: Video
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4"))
            
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                    , alignment: .topLeading
                )
        } //: VSTACK
        .navigationTitle(video.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoPlayerView(video: videos[0])
    }
}
