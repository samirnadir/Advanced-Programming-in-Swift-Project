//
//  MenuItemsOptionView.swift
//  Final_Project-Little_Lemon_Dinner_Menu
//
//  Created by Sameer Ghauri on 27/07/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var showMenuItemOption: Bool
    
    var body: some View {
        NavigationView{
            List{
                Section(header:Text("Selected Category")){
                    Text(menuCategory.Food.rawValue)
                    Text(menuCategory.Drink.rawValue)
                    Text(menuCategory.Dessert.rawValue)
                }
                
                Section(header: Text("Sort By")){
                    Text(sortBy.Type1.rawValue)
                    Text(sortBy.Type2.rawValue)
                    Text(sortBy.Type3.rawValue)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Filter")
            .toolbar{
                Button("Done"){
                    self.showMenuItemOption.toggle()
                }
            }
        }
    }
}
/*
struct MenuItemsOptionView_Previews: PreviewProvider {

    static var previews: some View {
        MenuItemsOptionView()
    }
}
*/
