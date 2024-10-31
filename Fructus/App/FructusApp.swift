//
//  FructusApp.swift
//  Fructus
//
//  Created by Alessio Toma on 30/10/24.
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
