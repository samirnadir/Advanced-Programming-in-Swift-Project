//
//  MenuViewViewModel.swift
//  Final_Project-Little_Lemon_Dinner_Menu
//
//  Created by Sameer Ghauri on 27/07/2023.
//

import Foundation

class menuViewViewModel:ObservableObject{
    
   @Published var Food:[MenuItem] = [
        MenuItem(Title: "Food 1", Ingredients: [.Tomatosauce,.Pasta], Price: 8.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 2", Ingredients: [.Broccoli], Price: 7.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 3", Ingredients: [.Carrot,.Pasta,.Tomatosauce], Price: 9.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 4", Ingredients: [.Spinash], Price: 8.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 5", Ingredients: [.Spinash,.Broccoli,.Carrot,.Pasta,.Tomatosauce], Price: 10.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 6", Ingredients: [.Tomatosauce], Price: 5.99, MenuCategory: [.Food], OrderCount: 900),
        MenuItem(Title: "Food 7", Ingredients: [.Carrot], Price: 5.99, MenuCategory: [.Food], OrderCount: 600),
        MenuItem(Title: "Food 8", Ingredients: [.Tomatosauce], Price: 4.99, MenuCategory: [.Food], OrderCount: 700),
        MenuItem(Title: "Food 9", Ingredients: [.Tomatosauce,.Carrot], Price: 7.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 10", Ingredients: [.Pasta], Price: 8.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 11", Ingredients: [.Broccoli,.Carrot], Price: 8.99, MenuCategory: [.Food], OrderCount: 1000),
        MenuItem(Title: "Food 12", Ingredients: [.Carrot,.Spinash,.Broccoli], Price: 9.99, MenuCategory: [.Food], OrderCount: 1000)
    ]
    
   @Published var Drink:[MenuItem] = [
        MenuItem(Title: "Drink 1", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 1000),
        MenuItem(Title: "Drink 2", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 1000),
        MenuItem(Title: "Drink 3", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 900),
        MenuItem(Title: "Drink 4", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 1000),
        MenuItem(Title: "Drink 5", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 400),
        MenuItem(Title: "Drink 6", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 1000),
        MenuItem(Title: "Drink 7", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 600),
        MenuItem(Title: "Drink 8", Ingredients: [], Price: 0.99, MenuCategory: [.Drink], OrderCount: 500)
    
    ]
    
   @Published var Dessert:[MenuItem] = [
        MenuItem(Title: "Dessert 1", Ingredients: [], Price: 9.99, MenuCategory: [.Dessert], OrderCount: 1000),
        MenuItem(Title: "Dessert 2", Ingredients: [], Price: 10.99, MenuCategory: [.Dessert], OrderCount: 1000),
        MenuItem(Title: "Dessert 3", Ingredients: [], Price: 7.99, MenuCategory: [.Dessert], OrderCount: 1000),
        MenuItem(Title: "Dessert 4", Ingredients: [], Price: 9.99, MenuCategory: [.Dessert], OrderCount: 1000)
    ]
}

let MenuModel = menuViewViewModel()
let ViewArrays = [MenuModel.Food,MenuModel.Drink,MenuModel.Dessert]


