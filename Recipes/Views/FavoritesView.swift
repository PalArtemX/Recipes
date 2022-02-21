//
//  FavoritesView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("FavoritesView")
                
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}










struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
