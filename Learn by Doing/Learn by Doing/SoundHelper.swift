//
//  SoundHelper.swift
//  Learn by Doing
//
//  Created by lapedro.veloso on 04/03/21.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER

private var player: AVAudioPlayer?

func playSound(_ name: String, type: String) {
    if let path = Bundle.main.path(forResource: name, ofType: type) {
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            player?.play()
        } catch {
            //raise an error
            print("Could not load the sound.")
        }
    }
}
