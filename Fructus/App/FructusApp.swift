//
//  FructusApp.swift
//  Fructus
//
//  Created by Ada Yagiz Gur on 19.12.2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
        
    }
}
