//
//  File.swift
//  
//
//  Created by Matheus Gois on 25/10/21.
//

import Foundation
import Colors

@available(iOS 13.0.0, *)
public struct DSCard: View {

    // Properties

    public let backgroundColor: DSColor

    // Lifecycle

    public init(
        backgroundColor: DSColor
    ) {
        self.backgroundColor = backgroundColor
    }

    public var body: some View {
        EmptyView()
            .frame(minWidth: 254, maxWidth: .infinity)
            .frame(height: 254)
            .background(backgroundColor.value.iOS13)
            .clipShape(
                RoundedRectangle(cornerRadius: 16)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(lineWidth: 2) // Change to Theme
                    .foregroundColor(.ds(.colorBlack))
            )
    }
}

