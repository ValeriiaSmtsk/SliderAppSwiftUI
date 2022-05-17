//
//  ContentView.swift
//  SliderAppSwiftUI
//
//  Created by Валерия Смецкая on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 0
    @State private var green: Double = 190
    @State private var blue: Double = 255
    
    var body: some View {
        ZStack {
            Color(white: 0.9)
                .ignoresSafeArea()
            VStack {
                ColorView(red: red, green: green, blue: blue)
                
                SliderView(sliderValue: $red, textColor: .red)
                SliderView(sliderValue: $green, textColor: .green)
                SliderView(sliderValue: $blue, textColor: .blue)
                
                Spacer()
            }.padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
