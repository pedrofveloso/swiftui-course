//
//  Constants.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

// MARK: - COLORS
let colorBackground = Color("ColorBackground")

// MARK: - DATA

let players: [Player] = Bundle.main.decode("player.json")

// MARK: - UTILITY
let appNotchTopSize = UIApplication.shared.windows.first?.safeAreaInsets.top

