//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by lapedro.veloso on 22/02/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
