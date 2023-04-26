//
//  LoginScreen.swift
//  SwiftUI100Days
//
//  Created by Offsureit Solutions on 20/04/23.
//

import SwiftUI

struct LoginScreen: View {
  @State private var username = ""
  @State private var password = ""
  @State private var loginData = ""
  var body: some View {
    NavigationView {
      ZStack {
        Background()
        InputArea(username: $username, password: $password, loginData: $loginData)
        
        
        
      }
    }
  }
}
struct InputArea: View {
  @Binding var username: String
  @Binding var password: String
  @Binding var loginData: String
  var body: some View {
//    Circle()
//      .scale(1.7)
//      .foregroundColor(.white.opacity(0.1))
//    Circle()
//      .scale(1.4)
//      .foregroundColor(.white.opacity(0.1))
    VStack(alignment: .leading) {
      Text("Login with \(loginData)")
       
        .foregroundColor(.white)
        .font(.title2)

      TextField("User name", text: $username)
        .padding()
        .frame(width: 250, height: 50)
        .background(.black.opacity(0.1))
        .cornerRadius(10)
      
      SecureField("Password", text: $password)
        .padding()
        .frame(width: 250, height: 50)
        .background(.black.opacity(0.1))
        .cornerRadius(10)
        .padding(.bottom, 10)
      Button{
        
        presentData()
      }label: {
        Text("login")
          .foregroundColor(.white)
          .frame(width: 250, height: 50)
          .background(.blue)
          .font(.title2)
          .cornerRadius(10)
      }
    }
  }
  
  
  func presentData() {
    self.loginData = "\(username) \(password)"
    print("Login with \(username) \(password)")
  }
}


struct LoginScreen_preview: PreviewProvider {

  static var previews: some View {
    LoginScreen()
  }
}
