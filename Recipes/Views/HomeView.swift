//
//  HomeView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("HomeView")
            
                .navigationTitle("Recipes")
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}