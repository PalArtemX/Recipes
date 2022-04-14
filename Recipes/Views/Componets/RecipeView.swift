//
//  RecipeView.swift
//  Recipes
//
//  Created by Artem Paliutin on 13/04/2022.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            // MARK: - Image
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Image(systemName: "photo.circle")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.orange.opacity(0.4))
                    
                }
                .frame(height: 300)
            VStack {
                Form {
                    // MARK: - Description
                    Section {
                        Text(recipe.description)
                    } header: {
                        HStack {
                            Image(systemName: "info.circle")
                                .symbolRenderingMode(.hierarchical)
                            Text("Description")
                        }
                        .foregroundColor(.accentColor)
                    }
                    
                    // MARK: - Ingredients
                    Section {
                        Text(recipe.ingredients)
                    } header: {
                        HStack {
                            Image(systemName: "list.triangle")
                                .symbolRenderingMode(.hierarchical)
                            Text("Ingredients")
                        }
                        .foregroundColor(.accentColor)
                    }
                    // MARK: - Directions
                    Section {
                        Text(recipe.directions)
                    } header: {
                        HStack {
                            Image(systemName: "list.triangle")
                                .symbolRenderingMode(.hierarchical)
                            Text("Directions")
                        }
                        .foregroundColor(.accentColor)
                    }
                }
            }
        }
        .navigationTitle(recipe.name)
        .ignoresSafeArea()
    }
}










struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: previewRecipe[0])
    }
}
