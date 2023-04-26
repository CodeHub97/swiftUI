//
//  GradientBackground.swift
//  swiftUI100Days
//
//  Created by Gagan on 19/04/23.
//

import SwiftUI

struct GradientBackgroundLayer: View {
   
    @Binding var isNight: Bool
   
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,  isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
