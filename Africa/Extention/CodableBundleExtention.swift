//
//  CodableBundleExtention.swift
//  Africa
//
//  Created by Александр Карпов on 19.02.2023.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImageModel] {
        //: 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //: 2. Create a property for the Data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        //: 3. Create a decodder
        let decoder = JSONDecoder()
        
        //: 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImageModel].self, from: data) else {
            fatalError("Failed to decode \(data) from bundle")
        }
        
        //: 5. Return the ready-to-use data
        return loaded
    }
}
