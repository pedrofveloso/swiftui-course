//
//  FruitDetailView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                // HEADER

                // TITLE
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(fruit.gradientColors[1])
                
                // HEADLINE
                Text(fruit.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                // LEARN ABOUT
                Text("learn more about \(fruit.title)".uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(fruit.gradientColors[1])
                
                // DESCRIPTION
                Text(fruit.description)
                    .multilineTextAlignment(.leading)
                
                // LINK
                
            } //: VSTACK
            .frame(maxWidth: 640) // for ipad purposes
            .padding(.horizontal, 20)
        } //: SCROLL
    }
}

// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}
