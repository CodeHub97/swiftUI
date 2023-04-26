//
//  ListView.swift
//  swiftUI100Days
//
//  Created by Gagan on 24/04/23.
//

import SwiftUI

struct Component: Hashable {
    var id: Int
    var name: String
}

struct ListView: View {
    let compomentList = [Component(id: 0, name: "Header List"), Component(id: 1, name: "Stacks")]
  @State private var path = [Component]()
  
    var body: some View {
      NavigationStack(path: $path) {
        VStack{
          Text("List of SwiftUI components").font(.title3).foregroundColor(.white)
  
          List(compomentList, id: \.id) { component in
            
            NavigationLink(component.name, value: component)
          
            
            
          }
          .scrollContentBackground(.hidden)
          .background(Background())
        }.background(Background())
//        Button("MOve to List") {
//          path.append(compomentList.first!)
//        }
          .navigationDestination(for: Component.self) { component in
            AllListView()
          }
          
      }
      
      
    }
  
    
}
struct RowBackgroundColor: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
