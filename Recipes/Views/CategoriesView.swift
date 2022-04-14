//
//  CategoriesView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Recipe.Category.allCases) { category in
                    NavigationLink {
                        ScrollView {
                            RecipeListView(recipes: recipesVM.recipes.filter { $0.category.rawValue == category.rawValue })
                        }
                        .navigationTitle(category.rawValue)
                    } label: {
                        Text(category.rawValue)
                    }

                    
                }
            }
                
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}










struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .environmentObject(RecipesViewModel())
    }
}
