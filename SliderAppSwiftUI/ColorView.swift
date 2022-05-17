//
//  ColorView.swift
//  SliderAppSwiftUI
//
//  Created by Валерия Смецкая on 17.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(width: 300, height: 150)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 4)
                .foregroundColor(.white))
            .padding(16)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0.5, green: 0.6, blue: 0.5)
    }
}
