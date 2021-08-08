//
//  ContentView.swift
//  Shared
//
//  Created by Matheus Gois on 07/08/21.
//

import SwiftUI
import Fonts
import Commons
import Colors

struct ContentView: View {

    // Properties


    // LifeCycle

    init() {
        FontManager.registerFonts()
        CommonsManager.shared.theme = JSONHelper.load(from: "design-tokens")
    }

    var body: some View {
        Text("Hello, world!")
            .font(DSFont.montez(.title).font)
            .foregroundColor(DSColor.colorGreen.iOS13)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
