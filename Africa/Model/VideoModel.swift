//
//  VideoModel.swift
//  Africa
//
//  Created by Александр Карпов on 20.02.2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
