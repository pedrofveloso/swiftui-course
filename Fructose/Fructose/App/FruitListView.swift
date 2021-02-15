//
//  FruitListView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct FruitListView: View {
    // MARK: - PROPERTIES
        
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(fruitsData.shuffled(), id: \.id) { item in
                FruitRowView(fruit: item)
                    .padding(.vertical, 4)
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
