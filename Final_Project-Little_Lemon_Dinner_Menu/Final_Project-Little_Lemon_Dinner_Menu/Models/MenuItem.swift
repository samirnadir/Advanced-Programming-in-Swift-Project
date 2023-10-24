//
//  MenuItem.swift
//  Final_Project-Little_Lemon_Dinner_Menu
//
//  Created by Sameer Ghauri on 28/07/2023.
//

import Foundation

protocol MenuItemProtocol{
    var id: UUID {get}
    var Price: Double {get}
    var Title: String {get}
    var Ingredients:[ingredient] {get set}
    var MenuCategory:[menuCategory] {set get}
    var OrderCount: Int {get set}
    
}


struct MenuItem: MenuItemProtocol,Hashable,Identifiable {
    var id = UUID()
    var Title: String
    var Ingredients:[ingredient]
    var Price: Double
    var MenuCategory: [menuCategory]
    var OrderCount: Int
    
}
