//
//  GridSectionView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

struct GridSectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle.degrees(rotateClockwise ? 90 : -90))
            Spacer()
        } //: VSTACK
        .frame(width: 85)
        .background(
            colorGray.cornerRadius(12)
        )
    }
}

// MARK: - PREVIEW
struct GridSectionView_Previews: PreviewProvider {
    static var previews: some View {
        GridSectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
    }
}
