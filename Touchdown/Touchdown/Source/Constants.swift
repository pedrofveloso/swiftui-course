//
//  Constants.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

// MARK: - COLORS
let colorBackground = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)

// MARK: - DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

// MARK: - UTILITY
let appNotchTopSize = UIApplication.shared.windows.first?.safeAreaInsets.top

// MARK: - LAYOUT
let columnSpacing: CGFloat = 10.0
let rowSpacing: CGFloat = 10.0
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
