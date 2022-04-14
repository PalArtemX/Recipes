//
//  NewRecipeView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button {
                showAddRecipe.toggle()
            } label: {
                Text("Add recipe manually")
            }
            .buttonStyle(.bordered)
            .sheet(isPresented: $showAddRecipe) {
                AddRecipeView()
            }
        }
    }
}










struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
