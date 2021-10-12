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
        VStack(alignment: .center) {
            DSButton(title: "ButtonButtonButton 1") {

            }

            DSButton(title: "Button 2", theme: .secondary) {

            }

            DSImage(icon: .bell)
        }.padding()
    }

    func Menu() -> some View {
        HStack(
            alignment: .center,
            spacing: .ds(.smallXl)
        ) {
            Icon("E-mail", .mail, .colorRed)
            Icon("Calendar", .calendar, .colorGreen)
            Icon("Favorites", .star, .colorBlue)
        }
    }

    func Icon(
        _ title: String,
        _ icon: DSIcon,
        _ color: DSColor
    ) -> some View {
        VStack {
            Image.ds(icon)
                .renderingMode(.template)
            Text(title)
                .font(.ds(.subtitle2))
                .padding([.top], .ds(.smallXxs))
        }.foregroundColor(.ds(color))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
