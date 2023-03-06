//
//  ContentView.swift
//  Pizza
//
//  Created by Ammar on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PizzaListView()
                .tabItem {
                    Label("Pizza List", systemImage: "list.bullet")
                }
            FavouritesView()
                .tabItem {
                    Label("Favourites", systemImage: "star.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
