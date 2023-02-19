//
//  ContentView.swift
//  Africa
//
//  Created by Александр Карпов on 19.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            
            .navigationTitle("Africa")
        } // NAV STACK
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
