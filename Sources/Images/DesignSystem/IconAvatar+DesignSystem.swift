//
//  Avatar+DesignSystem.swift
//  
//
//  Created by Matheus Gois on 25/10/21.
//

import SwiftUI

/// Design System - DSIconAvatar
public enum DSIconAvatar: String, CaseIterable {

    // Cases

    case peep1 = "peep-1"
    case peep2 = "peep-2"
    case peep3 = "peep-3"
    case peep4 = "peep-4"
    case peep5 = "peep-5"
    case peep6 = "peep-6"
    case peep7 = "peep-7"
    case peep8 = "peep-8"
    case peep9 = "peep-9"
    case peep10 = "peep-10"

    // Computed Properties

    public var value: UIImage {
        return ImageManager(named: rawValue)!
    }
}

// MARK: - Identifiable

extension DSIconAvatar: Identifiable {
    public var id: UUID { .init() }
}

// MARK: - Extensions

public extension UIImage {

    // Static Methods

    static func ds(_ type: DSIconAvatar) -> UIImage {
        return type.value
    }
}

@available(iOS 13.0, *)
public extension Image {

    // LifeCycle

    init(_ type: DSIconAvatar) {
        self.init(uiImage: type.value)
    }

    // Static Methods

    static func ds(_ type: DSIconAvatar) -> Image {
        return .init(uiImage: type.value)
    }
}
