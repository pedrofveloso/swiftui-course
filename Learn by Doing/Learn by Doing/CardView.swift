//
//  CardView.swift
//  Learn by Doing
//
//  Created by lapedro.veloso on 28/02/21.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    var card: Card
    
    @State private var fadeIn = false
    @State private var titleAndButtonAnimation = false
    
    private let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            } //: VSTACK
            .offset(y: titleAndButtonAnimation ? -220 : -300)
            .opacity(titleAndButtonAnimation ? 1.0 : 0.0)
            
            Button(action: {
                playSound("sound-chime", type: "mp3")
                haptics.impactOccurred()
            }) {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .foregroundColor(.white)
                } //: HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            } //: BUTTON
            .offset(y: titleAndButtonAnimation ? 210 : 300)
            .opacity(titleAndButtonAnimation ? 1.0 : 0.0)
            
        } //: ZSTACK
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(gradient: Gradient(colors: card.gradientColors),
                           startPoint: .top,
                           endPoint: .bottom)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear {
            withAnimation(.linear(duration: 1.2)) {
                fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.6)) {
                titleAndButtonAnimation.toggle()
            }
        }
    }
}

// MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
