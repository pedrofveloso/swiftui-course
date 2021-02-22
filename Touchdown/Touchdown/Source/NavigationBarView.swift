//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            barIcon(name: "magnifyingglass")
            
            Spacer()
            
            NavigationTitleView()
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .opacity(isAnimated ? 1 : 0)
            
            Spacer()
            
            ZStack {
                barIcon(name: "cart")
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -12)
            }
            
        } //: HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimated = true
            }
        }
    }
    
    func barIcon(name: String) -> some View {
        Image(systemName: name)
            .font(.title)
            .foregroundColor(.black)
    }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
