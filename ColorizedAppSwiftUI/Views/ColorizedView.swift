//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//
// xx

import SwiftUI

struct ColorizedView: View {

    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)

    @FocusState private var focusedField: Field?

    var body: some View {
        ZStack {
            BackgroundView()
                .onTapGesture { focusedField = nil }
            VStack(spacing: 20) {
                RectangleView(redColor: redSlider,
                              greenColor: greenSlider,
                              blueColor: blueSlider).padding()
                VStack(spacing: 10) {
                    SliderView(value: $redSlider,
                               color: .red)
                    .focused($focusedField, equals: .red)
                    SliderView(value: $greenSlider,
                               color: .green)
                    .focused($focusedField, equals: .green)
                    SliderView(value: $blueSlider,
                               color: .blue)
                    .focused($focusedField, equals: .blue)
                }
                .padding()
                Spacer()
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard, content: {
                Button(action: previousField) {
                    Image(systemName: "chevron.up")
                }
                Button(action: nextField) {
                    Image(systemName: "chevron.down")
                }
                Spacer()
                Button("Done") {
                    focusedField = nil
                }
            })
        }
    }
}


extension ColorizedView {
    enum Field {
        case red, green, blue
    }

    private func nextField() {
        switch focusedField {
        case .red:
            focusedField = .green
        case .green:
            focusedField = .blue
        case .blue:
            focusedField = .red
        case .none:
            focusedField = nil
        }
    }

    private func previousField() {
        switch focusedField {
        case .red:
            focusedField = .blue
        case .green:
            focusedField = .red
        case .blue:
            focusedField = .green
        case .none:
            focusedField = nil
        }
    }
}

struct ColorizedView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView()
    }
}

