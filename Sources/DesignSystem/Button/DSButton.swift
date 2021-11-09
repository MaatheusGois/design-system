//
//  DSButton.swift
//  
//
//  Created by Matheus Gois on 07/09/21.
//

import Images

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

    // MARK: - Constants

    private enum Constants {
        static let buttonHeight: CGFloat = 60
        static let buttoMinWidth: CGFloat = 167
    }

    // MARK: - Properties

    @State public var theme: DSButtonTheme

    private let disabled: Bool
    private let title: String
    private let icon: DSIcon
    private let aligment: Aligment
    private let action: () -> Void

    // MARK: - Lifecycle

    public init(
        title: String,
        disabled: Bool = false,
        theme: DSButtonThemeStyle = .primary,
        icon: DSIcon = .chevronRight,
        aligment: Aligment = .right,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.disabled = disabled
        self.theme = theme.style
        self.icon = icon
        self.aligment = aligment
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                if aligment == .left { image() }
                Text(title)
                if aligment == .right { image() }
                Spacer()
            }
        }
        .frame(minWidth: Constants.buttoMinWidth)
        .frame(height: Constants.buttonHeight)
        .buttonStyle(
            DSButtonStyle(theme: theme)
        )
        .disabled(disabled)
    }

    private func image() -> some View {
        Image(icon)
            .renderingMode(.template)
            .foregroundColor(theme.titleColor.iOS13)
    }
}

// MARK: - Aligment

@available(iOS 13.0, *)
public extension DSButton {
    enum Aligment {
        case left
        case right
    }
}
