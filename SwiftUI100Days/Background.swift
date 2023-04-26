//
//  Background.swift
//  SwiftUI100Days
//
//  Created by Offsureit Solutions on 20/04/23.
//

import SwiftUI

struct Background: View {
  var body: some View {
    LinearGradient(colors: [.blue, Color("backgroundColor")], startPoint: .topLeading, endPoint: .bottomTrailing)
      .edgesIgnoringSafeArea(.all)
  }
}
