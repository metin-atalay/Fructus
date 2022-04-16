//
//  SettingsView.swift
//  Fructus
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: PROP
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox (
                        label: HStack {
                            SettingsLabelView(labelText: "Fructus", labelIImage: "info.circle")
                        }
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customizer", labelIImage:       "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                          .padding(.vertical, 8)
                          .frame(minHeight: 60)
                          .layoutPriority(1)
                          .font(.footnote)
                          .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                          if isOnboarding {
                            Text("Restarted".uppercased())
                              .fontWeight(.bold)
                              .foregroundColor(Color.green)
                          } else {
                            Text("Restart".uppercased())
                              .fontWeight(.bold)
                              .foregroundColor(Color.secondary)
                          }
                        }
                        .padding()
                        .background(
                          Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                      }
                    
                 
                    // MARK: - SECTION 3
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", labelIImage: "apps.iphone")){
                        
                        
                        SettingsRowView(name: "Developer", content: "Metin ATALAY")
                        SettingsRowView(name: "Designer", content: "@matalay")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Githup", linkLabel: "Codes", linkDestination: "github.com/metin-atalay")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    }
                    
                   
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
                
            } //: SCROLL
            
        } //: NAVIGATION
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
