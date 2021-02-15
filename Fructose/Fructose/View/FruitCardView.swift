//
//  FruitCardView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 24.0) {
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .scaleEffect( isAnimating ? 1.0 : 0.6 )
            
            Text("Blueberry")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .shadow(color: Color.black.opacity(0.15), radius: 2, x: 2, y: 2)
            
            Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(maxWidth: 480)
            
            StartButtonView()
            
        } //: VSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
