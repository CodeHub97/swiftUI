//
//  WeatherOfDay.swift
//  swiftUI100Days
//
//  Created by Gagan on 20/04/23.
//

import SwiftUI

struct WeatherOfDay: View {
    @State private var isNight = false
    @State var locationName = "Mohali"
    @State var weather = "Mostly Cloudy"
    var body: some View {
        ZStack {
            GradientBackgroundLayer(isNight: $isNight)
            ScrollView(.vertical) {
                VStack {
                    Spacer()
                    Text(locationName)
                         .font(.system(size: 30))
                         .foregroundColor(.white)
                         .padding(.top, 20)
                    
                    Text("60°")
                        .font(.system(size: 60, weight: .regular))
                         .foregroundColor(.white)
                    
                    Text(weather)
                         .font(.system(size: 30))
                         .foregroundColor(.white)
                         .padding(.bottom, 1)
                    HStack {
                        Text("H:")
                            .foregroundColor(.white)
                        Text("32°")
                            .foregroundColor(.white).padding(.leading, -6).padding(.trailing, 5)
                        Text("L:")
                            .foregroundColor(.white)
                        Text("45°")
                            .foregroundColor(.white).padding(.leading, -6)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white.opacity(0.1))
                            .frame( height: 200)
                            .padding(.leading, 15)
                            .padding(.trailing, 15)
                        VStack(){
                            Text("Thunderstorm are near by, with clear condition at 2AM")
                                .frame(alignment: .top)
                                .foregroundColor(.white)
                            Divider()
                        }
                    }
                }
            }
        }
    }
}

struct WeatherOfDay_previews: PreviewProvider {
    static var previews: some View {
        WeatherOfDay()
    }
}
