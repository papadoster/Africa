//
//  GalleryView.swift
//  Africa
//
//  Created by Александр Карпов on 19.02.2023.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    @State private var selectedAnimal: String = "lion"
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
//    let hapticImpactSoft = UIImpactFeedbackGenerator(style: .soft)
    
    // SIMPLE GRID DEFINITION
    //let gridLayout: [GridItem] = [
    //    GridItem(.flexible()),
    //    GridItem(.flexible()),
    //    GridItem(.flexible())
    //]
    
    // EFFICIENT GRID DEFINITION
    
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            //MARK: - GRID
            VStack(alignment: .center, spacing: 30) {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                Slider(value: $gridColumn, in: 2...4, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColumn) { newValue in
                    gridSwitch()
//                    hapticImpactSoft.impactOccurred()
                }
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                hapticImpact.impactOccurred()
                            }
                    } //: LOOP
                }//: GRID
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
