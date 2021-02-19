//
//  VideoModel.swift
//  Africa
//
//  Created by lapedro.veloso on 18/02/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id, name, headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}

