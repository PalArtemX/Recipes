//
//  RecipeListView.swift
//  Recipes
//
//  Created by Artem Paliutin on 13/04/2022.
//

import SwiftUI

struct RecipeListView: View {
    let recipes: [Recipe]
    
    var body: some View {
        VStack {
            
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                .opacity(0.7)
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]) {
                ForEach(recipes) { recipe in
                    NavigationLink {
                        RecipeView(recipe: recipe)
                    } label: {
                        RecipeCardView(recipe: recipe)
                    }

                    
                    
                }
            }
            .padding(.top)
            
        }
        .padding(.horizontal)
    }
}










struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeListView(recipes: previewRecipe)
        }
    }
}
