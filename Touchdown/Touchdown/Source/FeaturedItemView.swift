//
//  PlayerImageTabView.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
struct PlayerImageTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
