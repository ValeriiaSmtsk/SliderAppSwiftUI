//
//  SliderView.swift
//  SliderAppSwiftUI
//
//  Created by Валерия Смецкая on 17.05.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    
    let textColor: Color
    
    var body: some View {
        HStack(spacing: 15) {
            
            Text("\(lround(sliderValue))")
                .frame(width: 50, height: 30)
            
            Slider(value: $sliderValue, in: 0...255)
                .accentColor(textColor)
            
            TextField("", value: $sliderValue, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 50, height: 30)
        }
        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(100), textColor: .green)
    }
}
