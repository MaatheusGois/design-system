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
        HStack(alignment: .center, spacing: 40) {
            Menu("E-mail", .mail, .colorRed)
            Menu("Calendar", .calendar, .colorGreen)
            Menu("Favorites", .star, .colorBlue)
        }
    }

    func Menu(_ title: String, _ icon: DSIcon, _ color: DSColor) -> some View {
        VStack {
            Image(icon)
                .renderingMode(.template)
            Text(title)
                .font(.ds(.subtitle2))
        }.foregroundColor(.ds(color))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
