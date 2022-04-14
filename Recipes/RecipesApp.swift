//
//  RecipesApp.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

@main
struct RecipesApp: App {
    
    @StateObject var recipesVM = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(recipesVM)
        }
    }
}
