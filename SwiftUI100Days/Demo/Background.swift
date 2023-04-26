//
//  Background.swift
//  swiftUI100Days
//
//  Created by Gagan on 24/04/23.
//

import SwiftUI

struct Background: View {
    var body: some View {
      LinearGradient(gradient: Gradient(colors:  [Color("lightBlack"), .gray]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
