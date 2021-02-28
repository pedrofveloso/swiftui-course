//
//  FooterView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Group {
                Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                    .multilineTextAlignment(.center)
                    .layoutPriority(2)
                
                Image("logo-lineal")
                    .renderingMode(.template)
                    .layoutPriority(0)
                
                Text("Copyright © Robert Petras\nAll right reserved.")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .layoutPriority(1)
            } //: GROUP
            .foregroundColor(.gray)
        } //: HSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
    }
}
