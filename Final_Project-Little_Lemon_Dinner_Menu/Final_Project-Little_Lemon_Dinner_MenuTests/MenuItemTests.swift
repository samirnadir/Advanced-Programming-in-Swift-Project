//
//  MenuItemTests.swift
//  Final_Project-Little_Lemon_Dinner_MenuTests
//
//  Created by Sameer Ghauri on 29/07/2023.
//

import XCTest
@testable import Final_Project_Little_Lemon_Dinner_Menu
import SwiftUI

class MenuItemTests: XCTestCase {
    
    func test_MenuItemTitleInitialization_init_titleEqualsToInitTitle() {
        let title = "Spaghetti Bolognese"
        let menuItem = MenuItem1(Title: title, Ingredients: [])
            
        XCTAssertEqual(menuItem.Title, title, "Menu item title should be equal to the initialized value")
        }
        
    func test_MenuItemIngredientsInitialization_init_IngredientsEqualsToInitIngredients() {
        let ingredients: [ingredient] = [.Pasta, .Tomatosauce]
        let menuItem = MenuItem1(Title: "Spaghetti Bolognese", Ingredients: ingredients)
        
        XCTAssertEqual(menuItem.Ingredients, ingredients, "Menu item ingredients should be equal to the initialized value")
        
    }
        
}
