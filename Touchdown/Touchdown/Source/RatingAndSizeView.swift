//
//  RatingAndSizeView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 27/02/21.
//

import SwiftUI

struct RatingAndSizeView: View {
    // MARK: - PROPERTIES
    private let sizes = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack {
                    ForEach(0..<5, id: \.self) { item in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundColor(.white)
                                .background(colorGray.cornerRadius(6))
                        } //: BUTTON
                    } //: LOOP
                } //: HSTACK
            } //: VSTACK
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 6) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack {
                    ForEach(sizes, id: \.self) { item in
                        Button(action: {}) {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28)
                        }
                        .background(Color.white.cornerRadius(6))
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(colorGray, lineWidth: 2)
                        )

                    } //: LOOP
                } //: HSTACK
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct RatingAndSizeView_Previews: PreviewProvider {
    static var previews: some View {
        RatingAndSizeView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
