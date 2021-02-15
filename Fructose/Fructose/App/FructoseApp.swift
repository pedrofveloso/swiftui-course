//
//  FructoseApp.swift
//  Fructose
//
//  Created by lapedro.veloso on 15/02/21.
//

import SwiftUI

@main
struct FructoseApp: App {
    
    @AppStorage("isOnboarding") private var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                Text("Hello world!")
            }
        }
    }
}   
