//
//  SettingsView.swift
//  Fructus
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct OnboardingView: View {

  var fruits: [Fruit] = fruitsData
  
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { item in
        FruitCardView(fruit: item)
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(fruits: fruitsData)
      .previewDevice("iPhone 11 Pro")
  }
}
