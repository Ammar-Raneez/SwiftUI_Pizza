//
//  PizzaModel.swift
//  Pizza
//
//  Created by Ammar on 2023-03-01.
//

import Foundation

struct Pizza: Codable, Hashable {
    let imageName: String
    let name: String
    let ingredients: String
    let thumbnailName: String
    let isFavorite: Bool?
    let type: PizzaType
}

enum PizzaType: String, Codable {
    case Meat = "meat"
    case Veg = "vegetarian"
}
