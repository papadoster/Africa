//
//  CoverImageView.swift
//  Africa
//
//  Created by Александр Карпов on 19.02.2023.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Properties
    
    let coverImages: [CoverImageModel] = Bundle.main.decode("covers.json")
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            } //: Loop
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

    //MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
