//
//  PizzaDetailView.swift
//  Pizza
//
//  Created by Ammar on 2023-03-05.
//

import SwiftUI

struct PizzaDetailView: View {
    var selectedPizzaItem: PizzaEntity
    @ObservedObject var viewModel: PizzaViewModel
    @State private var isFavorite = false
    
    init(selectedPizzaItem: PizzaEntity, viewModel: PizzaViewModel) {
        self.selectedPizzaItem = selectedPizzaItem
        self.viewModel = viewModel
        self.isFavorite = selectedPizzaItem.isFavorite
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(selectedPizzaItem.imageName ?? "")
                    .resizable()
                    .frame(height: 400)
                
                Form {
                    Section {
                        Text(selectedPizzaItem.ingredients ?? "")
                            .multilineTextAlignment(.leading)
                    } header: {
                        Text("Ingredients")
                    }
                    
                    Toggle("Favorite", isOn: $isFavorite)
                }
            }
            .navigationTitle(Text(selectedPizzaItem.name ?? ""))
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

//struct PizzaDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PizzaDetailView()
//    }
//}
