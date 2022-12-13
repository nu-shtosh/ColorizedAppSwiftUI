//
//  TextView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct TextView: View {

    let value: Double

    var body: some View {
        Text(String(lround(value)))
            .bold()
            .frame(width: 50)
            .foregroundColor(.white)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: 20.1111).background(Color.blue)
    }
}
