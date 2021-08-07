//
//  ContentView.swift
//  Shared
//
//  Created by Matheus Gois on 07/08/21.
//

import SwiftUI
import Fonts

struct ContentView: View {

    // LifeCycle

    init() {
        FontManager.registerFonts()
    }

    var body: some View {
        Text("Hello, world!")
            .font(DSFont.montez(.title).font)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
