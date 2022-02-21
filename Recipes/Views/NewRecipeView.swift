//
//  NewRecipeView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("NewRecipeView")
                
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}










struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
