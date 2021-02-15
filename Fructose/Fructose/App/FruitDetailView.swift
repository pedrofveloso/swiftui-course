//
//  FruitDetailView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        Text(fruit.title)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[3])
    }
}
