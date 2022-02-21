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
            Text("CategoriesView")
                
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
