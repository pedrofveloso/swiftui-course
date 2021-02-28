//
//  ContentView.swift
//  Learn by Doing
//
//  Created by lapedro.veloso on 28/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cardData) { item in
                    CardView(card: item)
                }
            } //: HSTACK
            .padding(20)
        } //: SCROLL
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.gray)
    }
}
