//
//  PizzaLIstView.swift
//  Pizza
//
//  Created by Ammar on 2023-03-01.
//

import SwiftUI

struct PizzaListView: View {
    @State private var pickedType = "all"
    
    var body: some View {
        NavigationStack {
            Picker("Pizzas", selection: $pickedType) {
                Text("All 🍕").tag("all")
                Text("Meat 🥩").tag(PizzaType.Meat.rawValue)
                Text("Veg 🥗").tag(PizzaType.Veg.rawValue)
            }
            .pickerStyle(.segmented)
            List {
                ForEach(MockData.getMockData(pickedType)) { pizza in
                    NavigationLink {
                        PizzaDetailView()
                    } label: {
                        HStack(spacing: 20) {
                            Image(pizza.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80)
                            Text(pizza.name)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .listRowSeparator(.hidden)
            .navigationTitle(Text("Pizzas"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        print("Add item")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct PizzaListView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView()
    }
}
