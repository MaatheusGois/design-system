//
//  ContentView.swift
//  Shared
//
//  Created by Matheus Gois on 07/08/21.
//

import DesignSystem
import SwiftUI

struct ContentView: View {

    // LifeCycle

    init() {
        FontManager.registerFonts()
        CommonsManager.shared.theme = JSONHelper.load(from: "design-tokens")
    }

    var body: some View {
        DSCell(backgroundColor: .aleatory)
    }

    var card: some View {
        DSCard(backgroundColor: .aleatory).padding()
    }

    var avatars: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center) {
                ForEach(DSIconAvatar.allCases) { avatar in
                    DSAvatar(
                        icon: avatar,
                        color: .aleatory,
                        size: .md
                    )
                }
            }.padding()
        }
    }

    var buttons: some View {
        HStack {
            DSButton(title: "Primary") { }

            DSButton(title: "Secondary", theme: .secondary, icon: .heartFill,  aligment: .left) { }
        }
    }

    var menu: some View {
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
