//
//  File.swift
//  
//
//  Created by Matheus Gois on 18/07/21.
//

import SwiftUI
import Commons

/// Design System - Fonts
public enum DSFont: String, CaseIterable {

    // Cases

    case heading1
    case heading2
    case heading3
    case heading4
    case subtitle1
    case subtitle2
    case paragraph

    // Private properties

    // Public properties

    public var value: UIFont {
        guard let model = CommonsManager.shared.theme?.font?[rawValue] as? FontTokenDataModel else { return .init() }
        let family = model.fontFamily?.value ?? .empty
        let style = model._fontStyleOld?.value ?? .empty
        let name = family + "-" + style
        let size = model.fontSize?.value ?? .zero
        let font = UIFont(name: name, size: size)

        return font ?? .init()
    }
}

// MARK: - Extensions

public extension UIFont {
    static func ds(_ type: DSFont) -> UIFont {
        return type.value
    }
}

@available(iOS 13.0, *)
public extension Font {
    static func ds(_ type: DSFont) -> Font {
        return type.value.iOS13
    }
}

