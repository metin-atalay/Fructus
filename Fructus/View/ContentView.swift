//
//  ContentView.swift
//  Fructus
//
//  Created by Metin Atalay on 10.04.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTY
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
              trailing:
                Button(action: {
                  isShowingSettings = true
                }) {
                  Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                  SettingsView()
                }
            )
            
        } //: NV
        .navigationViewStyle(StackNavigationViewStyle())
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData).scaleEffect()
    }
}
