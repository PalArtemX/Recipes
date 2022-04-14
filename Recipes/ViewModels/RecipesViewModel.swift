//
//  RecipesViewModel.swift
//  Recipes
//
//  Created by Artem Paliutin on 14/04/2022.
//

import Foundation


class RecipesViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    @Published var name = ""
    @Published var selectCategory = Recipe.Category.main
    @Published var description = ""
    @Published var ingredients = ""
    @Published var directions = ""
    @Published var navigateToRecipe = false
    
    init() {
        recipes = previewRecipe
    }
    
    // MARK: - Functions
    
    // MARK: addRecipe
    func addRecipe() {
        let nowDate = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: nowDate)
        
        let newRecipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectCategory, datePublished: datePublished, url: "")
        
        recipes.append(newRecipe)
    }
}
