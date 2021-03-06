//
//  AvocadosView.swift
//  Avocados
//
//  Created by lapedro.veloso on 06/03/21.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - PROPERTIES
    @State private var pulseAnimation = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulseAnimation ? 1 : 0.9)
                .opacity(pulseAnimation ? 1 : 0.9)
            
            Text("Avocados")
                .font(.system(size:42, weight: .bold, design: .serif))
                .foregroundColor(.white)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
            
            Text("Creamy, green, and full of nutrients!\nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
                .padding()
            
            Spacer()
        } //: VSTACK
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            withAnimation(
                Animation.easeInOut(duration: 1.2).repeatForever(autoreverses: true)
            ) {
                pulseAnimation.toggle()
            }
        }
    }
}

// MARK: - PREVIEW
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
