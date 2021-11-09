//
//  DSAvatar.swift
//  
//
//  Created by Matheus Gois on 24/09/21.
//

import Foundation
import Images
import Colors

@available(iOS 13.0.0, *)
public struct DSAvatar: View {

    // Properties

    public let icon: DSIconAvatar
    public let color: DSColor
    public let size: DSImageSize

    // Lifecycle

    public init(
        icon: DSIconAvatar,
        color: DSColor,
        size: DSImageSize
    ) {
        self.icon = icon
        self.color = color
        self.size = size
    }

    public var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .frame(width: size.value, height: size.value)
                .scaledToFill()
        }
        .frame(width: size.value, height: size.value)
        .background(color.value.iOS13)
        .clipShape(
            RoundedRectangle(cornerRadius: size.value/2)
        )
        .overlay(
            RoundedRectangle(cornerRadius: size.value/2)
                .stroke(lineWidth: 2) // Change to Theme
                .foregroundColor(.ds(.colorBlack))
        )
    }
}
