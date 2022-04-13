//
//  Recipe.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category
    let datePublished: String
    let url: String
    
    enum Category: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        
        case breakfast = "Breakfast"
        case soup = "Soup"
        case salad = "Salad"
        case appetizer = "Appetizer"
        case main = "Main"
        case side = "Side"
        case dessert = "Dessert"
        case snack = "Snack"
        case drink = "Drink"
    }
}
