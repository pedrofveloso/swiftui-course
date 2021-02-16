//
//  SettingsLabelView.swift
//  Fructose
//
//  Created by lapedro.veloso on 16/02/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var info: (title: String, imageName: String)
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(info.title.uppercased())
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: info.imageName)
        }
    }
}

// MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(info: (title: "fructus", imageName: "info.circle"))
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark)
    }
}
