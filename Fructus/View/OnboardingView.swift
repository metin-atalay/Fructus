//
//  OnboardingView.swift
//  Fructus
//
//  Created by Metin Atalay on 14.04.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: -BODY
    
    
    var body: some View {
        TabView {
            ForEach(0..<fruits.count) { item in
              FruitCardView(fruit: fruits[item])
                
            }//ForEach
        } //: TABLEVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
