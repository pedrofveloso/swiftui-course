//
//  FruitListView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct FruitListView: View {
    // MARK: - PROPERTIES
    private var fruits: [Fruit]
    
    init(fruits: [Fruit]) {
        self.fruits = fruits.shuffled()
    }
    
    var body: some View {
        NavigationView {
            List(fruits, id: \.id) { item in
                FruitRowView(fruit: item)
                    .padding(.vertical, 4)
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
    }
}
