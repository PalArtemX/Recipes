//
//  CategoriesView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        
        NavigationView {
            List {
                ForEach(Recipe.Category.allCases) { category in
                    NavigationLink {
                        ScrollView {
                            RecipeListView(recipes: previewRecipe.filter { $0.category.rawValue == category.rawValue })
                        }
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
    }
}
