//
//  File.swift
//  
//
//  Created by Matheus Gois on 18/07/21.
//

import SwiftUI

/// Design System - Images
public enum DSImage {

    // Cases
    case coffe(Size = .large)
    case checkbox(Size = .small)

    // Computed Properties

    public var image: UIImage {
        return ImageManager(named: name)!
    }

    public var name: String {
        switch self {
        case .coffe:
            return "coffe"
        case .checkbox:
            return "checkbox"
        }
    }

    public var view: some View {
        switch self {
        case .coffe(let size), .checkbox(let size):
            return Image(uiImage: image)
                .resizable()
                .frame(width: size.value, height: size.value)
        }
    }
}

// MARK: - DSFont.Size

public extension DSImage {
    enum Size {
        /// `size 150px`
        case large
        /// `size 50px`
        case small

        public var value: CGFloat {
            switch self {
            case .large:
                return 150
            case .small:
                return 50
            }
        }
    }
}
