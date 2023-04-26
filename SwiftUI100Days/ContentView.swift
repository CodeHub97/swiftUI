//
//  ContentView.swift
//  swiftUI100Days
//
//  Created by Gagan on 18/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            GradientBackgroundLayer(isNight: $isNight)
            VStack {
                TodayWeatherSubView()
                
                HStack(spacing: 10) {
                   
                    DaySubView(dayOfWeek: "Mon", weatherOfDay: "cloud.sun.fill", temperature: 55)
                    DaySubView(dayOfWeek: "Tue", weatherOfDay: "cloud.sun.fill", temperature: 50)
                    DaySubView(dayOfWeek: "Wed", weatherOfDay: "sun.max.fill", temperature: 65)
                    DaySubView(dayOfWeek: "Thu", weatherOfDay: "sun.max.fill", temperature: 60)
                    DaySubView(dayOfWeek: "Fri", weatherOfDay: "cloud.sun.fill", temperature: 70)
                    DaySubView(dayOfWeek: "Sat", weatherOfDay: "cloud.sun.fill", temperature: 75)
                }
                
                Spacer()
                
                Button {
                    debugPrint("Tapped")
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Weather", titleColor: .blue, backgroundColor: Color("gradientButtonColor"))
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct TodayWeatherSubView: View {
    var body: some View {
        Text("Mohali, PB")
            .font(.system(size: 30, weight: .bold, design: .default))
            .foregroundColor(.white)
            .frame(width: 200.0, height: 50.0)

            .padding(.top)
        
        VStack {
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .frame(width: 180, height: 100)
                .aspectRatio(contentMode: .fit)
            
            Text("78°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom , 40)
    }
}
struct DaySubView: View {
    var dayOfWeek: String
    var weatherOfDay: String
    var temperature: Int
    var body: some View {
        
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
            Image(systemName: weatherOfDay)
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
        }
    }
}


