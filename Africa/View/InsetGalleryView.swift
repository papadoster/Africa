//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Александр Карпов on 20.02.2023.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: AnimalModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }//hstack
        } //SROLL
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
