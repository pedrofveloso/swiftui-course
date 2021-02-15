//
//  FruitModel.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    let title, headline, imageName, description: String
    let gradientColors: [Color]
    let nutrition: [String]
}
