//
//  NavigationTitleView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

struct NavigationTitleView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text("TOUCH")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .font(.title2)
                .foregroundColor(.black)
            
            Text("DOWN")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitleView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
