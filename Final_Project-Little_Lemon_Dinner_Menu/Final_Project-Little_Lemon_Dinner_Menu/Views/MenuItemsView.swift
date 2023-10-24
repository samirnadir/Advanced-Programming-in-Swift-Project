//
//  MenuItemsView.swift
//  Final_Project-Little_Lemon_Dinner_Menu
//
//  Created by Sameer Ghauri on 27/07/2023.
//

import SwiftUI
import Foundation

struct MenuItemsView: View {
    @State var showMenuItemOption = false

    let Columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 3){
                    //Menu Category
                    ForEach(Array(menuCategory.allCases.enumerated()),id:\.element){index, menu in
                        Text("\(menu.rawValue)")
                            .font(.title)
                            .frame(alignment: .leading)
                            .padding(.top,8)
                            Spacer()
                       
                        //Menu Grid
                        LazyVGrid(columns: Columns,spacing: 1){
                            ForEach(Array(ViewArrays[index].enumerated()),id:\.element){index1,
                                    item in
                                    NavigationLink(destination: MenuItemDetailsView(menuItems: ViewArrays[index][index1])){
                                        VStack{
                                            Rectangle()
                                                .frame(height: 100)
                                            
                                            Text("\(ViewArrays[index][index1].Title)")
                                        }//Vstack
                                        .foregroundColor(Color.black)
                                            .padding(.top,10)
                                    }//NavigationLink
                                }//2nd ForEach end
                        }//LazyVStack end

                    }//1st ForEach end
                }//VStack
            }//ScrollView
            .scrollIndicators(.hidden)
            .padding(.trailing,19)
            .padding(.leading,19)
            .navigationTitle("Menu")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{ self.showMenuItemOption.toggle()
                    })
                    {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }//toolbar
            .sheet(isPresented: $showMenuItemOption){
                MenuItemsOptionView(showMenuItemOption: self.$showMenuItemOption)
            }//sheet
            
        }//NavigationView end
    }//body end
}//View end

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
