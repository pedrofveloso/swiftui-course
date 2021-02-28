//
//  DetailHeaderView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 27/02/21.
//

import SwiftUI

struct DetailHeaderView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Group {
                    Text("Protective Gear")
                    
                    Text(shop.selectedProduct?.name ?? "Helmet")
                        .font(.largeTitle)
                        .fontWeight(.black)
                } //:GROUP
                .foregroundColor(.white)
            } //:VSTACK
            
            Spacer()
        } //:HSTACK
    }
}

// MARK: - PREVIEW
struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.blue)
    }
}
