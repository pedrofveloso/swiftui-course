//
//  AppView.swift
//  Avocados
//
//  Created by lapedro.veloso on 06/03/21.
//

import SwiftUI

struct AppView: View {
    // MARK: - BODY
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStageView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        } //: TAB)
        .accentColor(Color.primary)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
