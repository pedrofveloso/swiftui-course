//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by lapedro.veloso on 18/02/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Link(destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!) {
                    Image(systemName: "arrow.up.right.square")
                    Text(animal.name)
                } //: LINK
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUPBOX
    }
}

// MARK: - PREVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
