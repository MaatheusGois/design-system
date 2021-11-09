//
//  File.swift
//  
//
//  Created by Matheus Gois on 25/10/21.
//

import Foundation
import Colors

@available(iOS 13.0.0, *)
public struct DSCell: View {

    // Properties

    public let backgroundColor: DSColor

    // States

    @State public var isOn: Bool = false

    // Lifecycle

    public init(
        backgroundColor: DSColor
    ) {
        self.backgroundColor = backgroundColor
    }

    public var body: some View {
        HStack {
            HStack {
                HStack {
                    if isOn {
                        Image(.check)
                            .resizable()
                            .frame(width: 18, height: 18)
                            .scaledToFill()
                    }
                }
                .frame(width: 24, height: 24)
                .background(DSColor.colorYellow.value.iOS13)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(lineWidth: 2) // Change to Theme
                        .foregroundColor(.ds(.colorBlack))
                )
                .onTapGesture {
                    isOn.toggle()
                }

                Text("Cell Item with Icon").font(.ds(.heading5))
                    .frame(alignment: .leading)
                    .padding(.leading, 6)

                Spacer()

                Image(.chevronRight)

            }.padding([.horizontal], 24)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(backgroundColor.value.iOS13)
    }
}
