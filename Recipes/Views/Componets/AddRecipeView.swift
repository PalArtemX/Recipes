//
//  AddRecipeView.swift
//  Recipes
//
//  Created by Artem Paliutin on 14/04/2022.
//

import SwiftUI

struct AddRecipeView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    @State private var name = ""
    @State private var selectCategory = Recipe.Category.main
    @State private var description = ""
    @State private var ingredients = ""
    @State private var directions = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                // MARK: - Name
                Section {
                    TextField("Recipe Name", text: $name)
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
                    Picker("Category", selection: $selectCategory) {
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
                    TextEditor(text: $description)
                } header: {
                    HStack {
                        Image(systemName: "text.justify.leading")
                        Text("Description")
                    }
                    .foregroundColor(.accentColor)
                }
                // MARK: - Ingredients
                Section {
                    TextEditor(text: $ingredients)
                } header: {
                    HStack {
                        Image(systemName: "text.justify.leading")
                        Text("Ingredients")
                    }
                    .foregroundColor(.accentColor)
                }
                // MARK: - Directions
                Section {
                    TextEditor(text: $directions)
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
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted { $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            navigateToRecipe.toggle()
                        } label: {
                            Label("Save", systemImage: "checkmark.square")
                                .symbolRenderingMode(.hierarchical)
                                .foregroundColor(.green)
                        }
                        
                    }
                    .disabled(name.isEmpty)
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
