//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelIImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelIImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelIImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
