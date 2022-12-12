//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct TextFieldView: View {

    @Binding var text: String
    @Binding var value: Double

    var body: some View {
        TextField("", text: $text)
            .frame(width: 70)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("100"), value: .constant(100))
    }
}
