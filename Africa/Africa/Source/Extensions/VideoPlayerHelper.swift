//
//  VideoPlayer+Extension.swift
//  Africa
//
//  Created by lapedro.veloso on 19/02/21.
//

import AVKit

extension AVPlayer {
    static func `for`(_ videoName: String, format: String = ".mp4") -> AVPlayer {
        guard let url = Bundle.main.url(forResource: videoName, withExtension: format) else {
            return AVPlayer()
        }
        let player = AVPlayer(url: url)
        player.play()
        
        return player
    }
}


