//
//  OnboardingView.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruitsData[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
