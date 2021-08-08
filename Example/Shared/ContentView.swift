//
//  ContentView.swift
//  Shared
//
//  Created by Matheus Gois on 07/08/21.
//

import DesignSystem

struct ContentView: View {

    // LifeCycle

    init() {
        FontManager.registerFonts()
        CommonsManager.shared.theme = JSONHelper.load(from: "design-tokens")
    }

    var body: some View {
        VStack {
            Image(uiImage: DSIcon.calendar.image)
                .renderingMode(.template)
                .foregroundColor(DSColor.colorGreen.iOS13)
            Text("Calendar")
                .foregroundColor(DSColor.colorGreen.iOS13)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
