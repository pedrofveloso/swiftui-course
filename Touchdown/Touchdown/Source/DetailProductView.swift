//
//  DetailProductView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 27/02/21.
//

import SwiftUI

struct DetailProductView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            //NAVIGATION
            DetailNavigationView()
            
            //HEADER
            DetailHeaderView()
                .padding(.horizontal)
            
            //PRICE AND IMAGE
            PriceAndImageView()
                .padding(.horizontal)
                .zIndex(1.0)
            
            VStack(alignment: .leading, spacing: 6) {
                //RATINGS AND SIZES
                RatingAndSizeView()
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? products[0].description) // For test purposes only
                        .foregroundColor(colorGray)
                } //: SCROLL
                .padding(.top, 10)
                
                //QUANTITY AND FAVOURITE
                QuantityAndFavouriteView()
                    .padding(.vertical, 10)
                
                //ADD TO CART BUTTON
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            .zIndex(0)
        } //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.redColorValue ?? 0.61,
                  green: shop.selectedProduct?.greenColorValue ?? 0.8,
                  blue: shop.selectedProduct?.blueColorValue ?? 0.89)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - PREVIEW
struct DetailProductView_Previews: PreviewProvider {
    static var previews: some View {
        DetailProductView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 835))
    }
}
