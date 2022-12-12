//
//  RectangleView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct RectangleView: View {

    let redColor: Double
    let greenColor: Double
    let blueColor: Double

    var body: some View {
        Rectangle()
            .foregroundColor(Color(CGColor(red: redColor / 255,
                                           green: greenColor / 255,
                                           blue: blueColor / 255,
                                           alpha: 1)))
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white,
                                                               lineWidth: 5))
            .frame(width: 350, height: 200)
            .cornerRadius(30)
            .padding(.top, 16)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(redColor: 45, greenColor: 55, blueColor: 66)
    }
}
