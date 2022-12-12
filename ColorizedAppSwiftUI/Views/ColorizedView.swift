//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct ColorizedView: View {

    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)

    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 20) {
                RectangleView(redColor: redSlider,
                              greenColor: greenSlider,
                              blueColor: blueSlider).padding()
                RGBSlidersView(redSlider: $redSlider,
                               greenSlider: $greenSlider,
                               blueSlider: $blueSlider).padding()
                Spacer()
            }
        }
    }
}

struct ColorizedView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView()
    }
}

struct RGBSlidersView: View {
    @Binding var redSlider: Double
    @Binding var greenSlider: Double
    @Binding var blueSlider: Double

    var body: some View {
        VStack(spacing: 10) {
            SliderView(value: $redSlider, color: .red)
            SliderView(value: $greenSlider, color: .green)
            SliderView(value: $blueSlider, color: .blue)
        }
    }
}
