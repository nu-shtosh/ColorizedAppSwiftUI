//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct TextFieldView: View {

    @Binding var value: Double
    @Binding var text: String

    @State private var isShowAlert = false

    var body: some View {
        TextField(text,
                  value: Binding(get: { lround(value) },
                                 set: { value = Double($0)}),
                  format: .number)
        .frame(width: 100)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Ops", isPresented: $isShowAlert, actions: {} ) {
            Text("Numbers must be in range from 0 to 255")
        }
    }
}

// с алертом я не справился, точнее он у меня вызывался просто при нажатии на текстфилд
extension TextFieldView {
    private func checkValue() {
        if let checkedValue = Int(text), (0...255).contains(checkedValue) {
            self.value = Double(value)
            return
        }
        isShowAlert.toggle()
        value = 0
        text = "0"
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(value: .constant(34.463), text: .constant("12")).background(Color.blue)
    }
}
