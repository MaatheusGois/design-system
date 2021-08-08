//
//  Color+DesignSystem.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import Commons
import SwiftUI

/// Colors - Design System
public enum DSColor: String {
    case colorBlackOverlay, colorBlue, colorBlue800, colorBlue100, colorWhite, colorPink, colorPink800, colorPink200, colorBlack, colorBlack800, colorBlack300, colorBlack700, colorBlack200, colorBlack100, colorYellow, colorYellow800, colorYellow100, colorGreen, colorGreen800, colorGreen100, colorRed, colorRed800, colorRed100

    // Public properties

    public var value: UIColor {
        let token = CommonsManager.shared.theme?.color?[rawValue] as? TokenDataModel<OptionalDecodableColor>
        return token?.value.color ?? .white
    }
}

// MARK: - Extensions

public extension UIColor {
    static func ds(_ type: DSColor) -> UIColor {
        return type.value
    }
}

@available(iOS 13.0, *)
public extension Color {
    static func ds(_ type: DSColor) -> Color {
        return type.value.iOS13
    }
}
