//
//  DSAvatar.swift
//  
//
//  Created by Matheus Gois on 24/09/21.
//

import Foundation

@available(iOS 13.0.0, *)
public struct DSAvatar: View {

    // Properties

    private let icon: DSIcon

    // Lifecycle

    public init(
        icon: DSIcon
    ) {
        self.icon = icon
    }

    public var body: some View {
        HStack {
            Image(icon)
                .renderingMode(.template)
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.black)
                .scaledToFill()
        }
        .frame(width: 170, height: 170)
        .background(Color.red)
        .clipShape(
            RoundedRectangle(cornerRadius: 170)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 170)
                .stroke(lineWidth: 2)
                .foregroundColor(.black)
        )
    }
}
