//
//  CenterModdifier.swift
//  Africa
//
//  Created by Александр Карпов on 22.02.2023.
//

import SwiftUI

struct CenterModdifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
