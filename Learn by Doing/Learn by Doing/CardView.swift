//
//  CardView.swift
//  Learn by Doing
//
//  Created by lapedro.veloso on 28/02/21.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    private let gradientColors: [Color] = [Color("Color01"),
                                           Color("Color02")]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            } //: VSTACK
            .offset(y: -220)
            
            Button(action: { print("button hitted") }) {
                HStack {
                    Text("LEARN")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .foregroundColor(.white)
                } //: HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            } //: BUTTON
            .offset(y: 210)
            
        } //: ZSTACK
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(gradient: Gradient(colors: gradientColors),
                           startPoint: .top,
                           endPoint: .bottom)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
