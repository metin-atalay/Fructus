//
//  FructusApp.swift
//  Fructus
//
//  Created by Metin Atalay on 10.04.2022.
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
