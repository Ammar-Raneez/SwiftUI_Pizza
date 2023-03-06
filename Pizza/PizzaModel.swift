//
//  PizzaModel.swift
//  Pizza
//
//  Created by Ammar on 2023-03-01.
//

import Foundation

struct Pizza: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let ingredients: String
    let thumbnailName: String
    let type: PizzaType
}

enum PizzaType: String {
    case Meat = "meat"
    case Veg = "vegetarian"
}
