//
//  SettingsView.swift
//  Recipes
//
//  Created by Artem Paliutin on 21.02.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("SettingsView")
                
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}










struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
