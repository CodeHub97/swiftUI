//
//  AllListView.swift
//  swiftUI100Days
//
//  Created by Gagan on 24/04/23.
//

import SwiftUI

struct AllListView: View {
    let arrList = [ListModel(name: "BMW", icon: "car.rear.fill"),
                   ListModel(name: "Maruti", icon: "bolt.car"),
                   ListModel(name: "MG", icon: "bolt.car.fill"),
                   ListModel(name: "Audi", icon: "car.side.fill"),
                   ListModel(name: "BMW", icon: "car.side.fill")]
    var body: some View {
        VStack{
          //  Text("Header List")
            
            List {
                Section{
                    ForEach(arrList, id: \.id) { model in
                        CustomRow(model: model)
                    }
                } header: {
                    Text("Header").foregroundColor(.red)
                } footer: {
                    Text("Footer").foregroundColor(.red)
                }
                .listRowSeparatorTint(.red)
                
                
                Section{
                    ForEach(arrList, id: \.id) { model in
                        CustomRow(model: model)
                            .listRowBackground(Color.cyan)
                    }
                } header: {
                    Text("Header").foregroundColor(.green).font(.title2)
                        .listRowInsets(.init(top: 50, leading: 0, bottom: 10, trailing: 0))
                } footer: {
                    Text("Footer").foregroundColor(.green).font(.title3)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                }
                .listRowSeparatorTint(.yellow)
                
            }
            .environment(\.defaultMinListRowHeight, 50)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Hey")
        .navigationBarItems(leading:
                              
                              Button(action: {
          
        }, label: {
          Label("Remove", systemImage: "trash")
        })
        )
    }
}

struct AllListView_Previews: PreviewProvider {
    static var previews: some View {
        AllListView()
    }
}

struct CustomRow: View {
    let model: ListModel
    var body: some View {
        HStack {
            Text(model.name)
            Image(systemName: model.icon)
            Spacer()
            Text(">")
        }
    }
}

struct ListModel: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
}
