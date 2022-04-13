//
//  RecipeCardView.swift
//  Recipes
//
//  Created by Artem Paliutin on 13/04/2022.
//

import SwiftUI

struct RecipeCardView: View {
    
    let recipe: Recipe
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .overlay(alignment: .top) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .frame(maxWidth: 150)
                            .padding()
                    }
            } placeholder: {
                VStack {
                    Image(systemName: "photo.circle")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.orange.opacity(0.4))
                    .padding()
                    Text(recipe.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3, x: 0, y: 0)
                        .frame(maxWidth: 150)
                        .padding()
                }
                    
                Spacer()
            }

        }
        .frame(width: 160, height: 210, alignment: .top)
        .background(.ultraThinMaterial)
        .cornerRadius(15)
    }
}










struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeCardView(recipe: previewRecipe[0])
                .previewLayout(.sizeThatFits)
            RecipeCardView(recipe: previewRecipe[0])
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
