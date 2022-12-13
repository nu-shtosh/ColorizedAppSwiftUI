//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct TextFieldView: View {

    @Binding var value: Double
    var text: String = ""

    var body: some View {
        TextField(text,
                  value: Binding(get: { lround(value) },
                                 set: { value = Double($0)}),
                  format: .number)
        .frame(width: 100)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(value: .constant(324.463), text: "500").background(Color.blue)
    }
}
