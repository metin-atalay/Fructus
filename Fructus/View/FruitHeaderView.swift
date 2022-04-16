//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - PROP
    
    @State private var isAnimatingImage: Bool = false
    
    var fruit: Fruit
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.3), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
            
        } //: ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
