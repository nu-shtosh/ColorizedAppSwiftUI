//
//  BackgroundView.swift
//  ColorizedAppSwiftUI
//
//  Created by Илья Дубенский on 12.12.2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color("blueBack")
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()

    }
}
