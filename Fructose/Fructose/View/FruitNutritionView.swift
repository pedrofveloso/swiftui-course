//
//  FruitNutritionView.swift
//  Fructose
//
//  Created by lapedro.veloso on 16/02/21.
//

import SwiftUI

struct FruitNutritionView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    private let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            
            DisclosureGroup("Nutritional value per 100g") {
                
                ForEach(0..<nutrients.count) { index in
                    
                    Divider().padding(4)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .font(Font.body.bold())
                        .foregroundColor(fruit.gradientColors.last)
                        
                        Spacer(minLength: 24)
                        
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                    
                } //: FOREACH
                
            } //: DISCLOSUREGROUP
        }
    } //: GROUPBOX
}

// MARK: - PREVIEW
struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
