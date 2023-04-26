//
//  GradientView.swift
//  SwiftUI100Days
//
//  Created by Offsureit Solutions on 20/04/23.
//

import SwiftUI

struct GradientView: View {
  var body: some View {
   
    ZStack {
      
//      VStack {
//                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce at ante sit amet turpis pretium porta. Cras id dui vel orci scelerisque efficitur et quis dui. Suspendisse tortor nisi, euismod scelerisque sollicitudin in, euismod non ligula. Nulla id risus lobortis nunc venenatis tincidunt. Vestibulum elementum ex est, non sagittis odio dictum eget. Suspendisse non dolor pulvinar, vulputate ligula sit amet, aliquam lorem. Fusce leo ipsum, tempus quis ipsum a, accumsan sagittis justo. Duis placerat, purus vitae ornare semper, enim eros egestas metus, eu euismod arcu ante sed dui. Proin blandit auctor fermentum. Nulla elementum nibh sit amet metus suscipit, eget cursus sapien eleifend. Curabitur tempus mi malesuada quam tempus posuere. Pellentesque ullamcorper tempus dapibus.")
//              }
//              .padding()
//              .foregroundColor(.white)
//              .background(Color.blue)
      
      VStack {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce at ante sit amsadasdasdasdasdadasdasdasdasdasdasdasdasdas dsdsad adasdasdasdasd ddasdasdasdasdadasdasdasdasdsadsdasdasdasdasdasdsddsds s sdad sadas sdad sad ")
//          .background(.gray)
//          .foregroundColor(.white)
         // .multilineTextAlignment(.leading)
//          .padding(.leading, 0)
//          .padding(.top, 1)
//          .padding(.trailing, 00)
         // .font(.system(size: 14, weight: .medium))
     //   Spacer()
      }
      .padding()
      .foregroundColor(.red)
      .background(Color.blue)
        
    }
      
  }
}

struct Gradient_previews: PreviewProvider {
  static var previews: some View {
    GradientView()
      .previewLayout(PreviewLayout.sizeThatFits)
      .padding()
      .previewDisplayName("One")
    GradientView()
      .previewLayout(PreviewLayout.sizeThatFits)
      .padding()
      .previewDisplayName("Two")
      .background(Color(.systemBackground))
      .environment(\.colorScheme, .dark)
  }
}
