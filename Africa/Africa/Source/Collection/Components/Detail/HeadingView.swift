//
//  HeadingView.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    let content: (image: String, title: String)
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: content.image)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(content.title)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: - PREVIEW
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(content: (image: "photo.on.rectangle.angled",
                              title: "Wilderness in Pictures"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
