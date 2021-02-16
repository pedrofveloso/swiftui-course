//
//  FruitRowView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 8) {
            Image(fruit.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color.black.opacity(0.15), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
                
            VStack (alignment: .leading, spacing: 8) {
                Text(fruit.title)
                    .font(.title2)
                
                Text(fruit.headline)
                    .font(.caption)
            }
        }
    }
}

// MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
