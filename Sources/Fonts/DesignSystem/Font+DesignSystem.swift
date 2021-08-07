//
//  File.swift
//  
//
//  Created by Matheus Gois on 18/07/21.
//

import SwiftUI

/// Design System - Fonts
public enum DSFont {

    // Cases

    /// Default size is `13px`
    case montez(Size = .title)
    /// Default size is `13px`
    case montserrat(Size = .body)

    // Computed Properties

    public var font: Font? {
        switch self {
        case let .montez(size):
            return Font.custom(name, size: size.value)
        case let .montserrat(size):
            return Font.custom(name, size: size.value)
        }
    }

    public var name: String {
        switch self {
        case .montez:
            return "Montez-Regular"
        case .montserrat:
            return "Montserrat-Regular"
        }
    }
}

// MARK: - DSFont.Size

public extension DSFont {
    enum Size {
        /// `size 13px`
        case body
        /// `size 15px`
        case title

        public var value: CGFloat {
            switch self {
            case .title:
                return 24
            case .body:
                return 18
            }
        }
    }
}
