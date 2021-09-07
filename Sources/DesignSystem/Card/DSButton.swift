//
//  DSButton.swift
//  
//
//  Created by Matheus Gois on 07/09/21.
//

import Foundation

@available(iOS 13.0.0, *)
public struct DSButtonStyle: ButtonStyle {

    // MARK: - Lifecycle

    public init(theme: DSButtonTheme) {
        self.theme = theme
    }

    // MARK: - Environment

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Properties

    @State public var theme: DSButtonTheme

//    open var iconAlingment: IconAlingment = .left

    // MARK: - Lifecycle

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(theme.titleColor.iOS13)
            .font(theme.titleFont.iOS13)
            .background(
                configuration.isPressed ?
                    theme.selectedBackgroundColor.iOS13 :
                    theme.backgroundColor.iOS13
            )
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(
                        theme.borderColor.iOS13,
                        lineWidth: theme.borderWidth
                    )
            )
            .padding([.top, .bottom], 10)
    }
}


@available(iOS 13.0, *)
public struct DSButton: View {

    // MARK: - Properties

    @State public var theme: DSButtonTheme = DSPrimaryButtonTheme()

    private let disabled: Bool
    private let title: String
    private let action: () -> Void

    // MARK: - Lifecycle

    public init(
        title: String,
        disabled: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.action = action
        self.disabled = disabled
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(
            DSButtonStyle(theme: theme)
        )
        .disabled(self.disabled)
    }
}
