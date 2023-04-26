//
//  WeatherButton.swift
//  swiftUI100Days
//
//  Created by Gagan on 19/04/23.
//

import SwiftUI
struct WeatherButton: View {
    var title: String
    var titleColor: Color
    var backgroundColor: Color
    var body: some View {
        
        Text(title)
            .frame(width: 250, height: 60)
            .foregroundColor(titleColor)
            .background(backgroundColor)
            .cornerRadius(10)
            .font(.system(size: 20, weight: .medium))
            
    }
}
