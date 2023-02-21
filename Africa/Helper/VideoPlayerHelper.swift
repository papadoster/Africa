//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Александр Карпов on 21.02.2023.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if let player = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: player)
        videoPlayer?.play()
    }
    return videoPlayer!
}
