//
//  VideoView.swift
//  Africa
//
//  Created by lapedro.veloso on 17/02/21.
//

import SwiftUI

struct VideoView: View {
    // MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    private let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(videos) { video in
                NavigationLink(destination: VideoPlayerView(info: (videoName: video.id,
                                                                   title: video.name))) {
                    VideoListItemView(video: video)
                        .padding(.vertical, 8)
                } //: LINK
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        haptic.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    } //: BUTTON
                } //: ITEM
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
