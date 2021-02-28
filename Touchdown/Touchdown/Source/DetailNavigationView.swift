//
//  DetailNavigationView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 27/02/21.
//

import SwiftUI

struct DetailNavigationView: View {
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .imageScale(.large)
                .foregroundColor(.white)
                .onTapGesture {
                    withAnimation(.easeOut) {
                        shop.selectedProduct = nil
                    }
                }
            
            Spacer()
            
            Image(systemName: "cart")
                .imageScale(.large)
                .foregroundColor(.white)
            
        } //:HSTACK
        .padding(.horizontal)
        .padding(.top, appNotchTopSize)
        .padding(.bottom, 10)
    }
}

// MARK: - PREVIEW
struct DetailNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNavigationView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .background(colorGray)
    }
}
