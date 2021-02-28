//
//  PriceAndImageView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 27/02/21.
//

import SwiftUI

struct PriceAndImageView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? "$189")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //:VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? "helmet-no6")
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        } //:HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
    }
}

// MARK: - PREVIEW
struct PriceAndImageView_Previews: PreviewProvider {
    static var previews: some View {
        PriceAndImageView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.blue)
    }
}
