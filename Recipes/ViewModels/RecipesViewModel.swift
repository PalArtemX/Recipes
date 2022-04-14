//
//  RecipesViewModel.swift
//  Recipes
//
//  Created by Artem Paliutin on 14/04/2022.
//

import Foundation


class RecipesViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    init() {
        recipes = previewRecipe
    }
    
    // MARK: - Functions
}
