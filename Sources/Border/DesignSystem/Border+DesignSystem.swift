//
//  File.swift
//  
//
//  Created by Matheus Gois on 07/09/21.
//

import Commons
import SwiftUI

public enum DSBorder: String {

    case single

    // Public properties

    public var value: CGFloat {
        let token = CommonsManager.shared.theme?.border?[rawValue] as? TokenDataModel<BorderTokenDataModel>
        return token?.value.strokeWeight?.value ?? .zero
    }
}


// MARK: - Extensions

public extension CGFloat {
    static func ds(_ type: DSBorder) -> CGFloat {
        return type.value
    }
}
