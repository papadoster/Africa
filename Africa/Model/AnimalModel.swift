//
//  AnimalModel.swift
//  Africa
//
//  Created by Александр Карпов on 19.02.2023.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
