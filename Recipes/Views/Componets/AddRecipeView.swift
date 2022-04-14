//
//  AddRecipeView.swift
//  Recipes
//
//  Created by Artem Paliutin on 14/04/2022.
//

import SwiftUI

struct AddRecipeView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel

    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                // MARK: - Name
                Section {
                    TextField("Recipe Name", text: $recipesVM.name)
                } header: {
                    HStack {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            .symbolRenderingMode(.hierarchical)
                        Text("Name")
                    }
                    .foregroundColor(.accentColor)
                }
                // MARK: - Category
                Section {
                    Picker("Category", selection: $recipesVM.selectCategory) {
                        ForEach(Recipe.Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                } header: {
                    HStack {
                        Image(systemName: "list.triangle")
                            .symbolRenderingMode(.hierarchical)
                        Text("Category")
                    }
                    .foregroundColor(.accentColor)
                }
                // MARK: - Description
                Section {
                    TextEditor(text: $recipesVM.description)
                } header: {
                    HStack {
                        Image(systemName: "text.justify.leading")
                        Text("Description")
                    }
                    .foregroundColor(.accentColor)
                }
                // MARK: - Ingredients
                Section {
                    TextEditor(text: $recipesVM.ingredients)
                } header: {
                    HStack {
                        Image(systemName: "text.justify.leading")
                        Text("Ingredients")
                    }
                    .foregroundColor(.accentColor)
                }
                // MARK: - Directions
                Section {
                    TextEditor(text: $recipesVM.directions)
                } header: {
                    HStack {
                        Image(systemName: "text.justify.leading")
                        Text("Directions")
                    }
                    .foregroundColor(.accentColor)
                }

            }
            .toolbar {
                // MARK: - Cancel Button
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark.app")
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.red)
                    }
                }
                // MARK: - Save Button
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $recipesVM.navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted { $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            recipesVM.addRecipe()
                            recipesVM.navigateToRecipe.toggle()
                        } label: {
                            Label("Save", systemImage: "checkmark.square")
                                .symbolRenderingMode(.hierarchical)
                                .foregroundColor(.green)
                        }
                        
                    }
                    .disabled(recipesVM.name.isEmpty)
                }
                
            }
            .navigationTitle("New Recipe")
        }
    }
}










struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AddRecipeView()
                .environmentObject(RecipesViewModel())
            AddRecipeView()
                .environmentObject(RecipesViewModel())
                .preferredColorScheme(.dark)
        }
    }
}
