//
//  VideoPlayerView.swift
//  Africa
//
//  Created by lapedro.veloso on 19/02/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    let info: (videoName: String, title: String)
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer.for(info.videoName))
                .overlay(
                    Image("logo")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 8)
                    , alignment: .topLeading
                )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(info.title, displayMode: .inline)
    }
}

// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(info: (videoName: "zebra", title: "Zebra"))
        }
    }
}
