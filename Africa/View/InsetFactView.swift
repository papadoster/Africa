//
//  InsetFactView.swift
//  Africa
//
//  Created by Александр Карпов on 20.02.2023.
//

import SwiftUI

struct InsetFactView: View {
    let animal: AnimalModel
    var body: some View {
        
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                        .padding(.horizontal)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
        .cornerRadius(12)
        
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
