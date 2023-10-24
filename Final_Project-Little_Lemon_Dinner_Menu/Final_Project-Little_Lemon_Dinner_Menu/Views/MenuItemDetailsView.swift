//
//  MenuItemDetailsView.swift
//  Final_Project-Little_Lemon_Dinner_Menu
//
//  Created by Sameer Ghauri on 27/07/2023.
//

import SwiftUI

var array = ["spanish" ,"broccoli", "carrot", "pasta" ,"tomato sause"]

struct MenuItemDetailsView: View {
//var MenuViewModel = MenuItem
  var menuItems : MenuItem
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    //Logo Image
                    Image("Little Lemon logo")
                        .resizable()
                        .frame(width: 250,height: 470,alignment: .top)
                    
                    //Details
                    //Price
                    Text("Price:")
                        .bold()
                    Text("\(String(format:"%.4g",menuItems.Price))")
                        .padding(.bottom,2)
                    
                    //Ordered
                    Text("Ordered:")
                        .bold()
                    Text("\(menuItems.OrderCount)")
                        .padding(.bottom,2)
                    
                    //Ingredients
                    if menuItems.Ingredients != [] {
                        Text("Ingredients:")
                            .bold()
                        ForEach(menuItems.Ingredients,id:\.self){ item in
                            Text(item.rawValue)
                        }
                    }
                }//ScrollView
                .frame(alignment: .center)
                .scrollContentBackground(.hidden)
                .scrollIndicators(.hidden)

            }
        }
        .navigationBarTitle("\(menuItems.Title)")
        
    }
                            
}
/*struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView()
    }
}
*/
