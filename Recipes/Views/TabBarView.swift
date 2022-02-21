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
                
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "list.star")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New Recipe", systemImage: "doc.badge.plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}










struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
