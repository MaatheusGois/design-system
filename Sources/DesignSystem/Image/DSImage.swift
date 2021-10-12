//
//  DSImage.swift
//  
//
//  Created by Matheus Gois on 24/09/21.
//

import Foundation

@available(iOS 13.0.0, *)
public struct DSImage: View {

    // Properties

    private let icon: DSIcon

    // Lifecycle

    public init(
        icon: DSIcon
    ) {
        self.icon = icon
    }

    public var body: some View {
        Image(icon)
            .resizable()
            .frame(width: 30, height: 30)
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 30))

            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 2).foregroundColor(Color.black)

            )
    }
}
