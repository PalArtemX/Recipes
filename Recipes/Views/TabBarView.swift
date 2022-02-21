//
//  TabBarView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectionTab = 0
    
    var body: some View {
        TabView(selection: $selectionTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
                
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "list.star")
                }
                .tag(1)
            
            NewRecipeView()
                .tabItem {
                    Label("New Recipe", systemImage: "doc.badge.plus")
                }
                .tag(2)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
                .tag(3)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(4)
        }
    }
}










struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
