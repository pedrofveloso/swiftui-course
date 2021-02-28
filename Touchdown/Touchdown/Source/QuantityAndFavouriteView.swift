//
//  QuantityAndFavouriteView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 27/02/21.
//

import SwiftUI

struct QuantityAndFavouriteView: View {
    @State private var count: Int = 0
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 6) {
            Group {
                Button(action: {
                    if count > 0 {
                        count -= 1
                    }
                }) {
                    Image(systemName: "minus.circle")
                } //: BUTTON
                
                Text("\(count)")
                
                Button(action: {
                    if count < 100 {
                        count += 1
                    }
                }) {
                    Image(systemName: "plus.circle")
                } //: BUTTON
            }
            .font(.title)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .font(.title)
                    .foregroundColor(.pink)
            } //: BUTTON
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct QuantityAndFavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityAndFavouriteView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
