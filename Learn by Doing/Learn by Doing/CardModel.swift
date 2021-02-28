//
//  CardModel.swift
//  Learn by Doing
//
//  Created by lapedro.veloso on 28/02/21.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let imageName: String
    let callToAction: String
    let message: String
    let gradientColors: [Color]
}
