//
//  Ingredient.swift
//  Final_Project-Little_Lemon_Dinner_Menu
//
//  Created by Sameer Ghauri on 27/07/2023.
//

import Foundation

enum ingredient: String, CaseIterable{
    case Spinash = "Spinash"
    case Broccoli = "Broccoli"
    case Carrot = "Carrot"
    case Pasta = "Pasta"
    case Tomatosauce = "Tomatosauce"
}

struct MenuItem1: Hashable, Identifiable {
    var id = UUID()
    var Title: String
    var Ingredients:[ingredient]

}
