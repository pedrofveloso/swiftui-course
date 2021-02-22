//
//  CreditsView.swift
//  Africa
//
//  Created by lapedro.veloso on 21/02/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © Robert Petras
    All right reserved
    Better Apps ♡ Less Code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding()
        } //: VSTACK
        .opacity(0.3)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
