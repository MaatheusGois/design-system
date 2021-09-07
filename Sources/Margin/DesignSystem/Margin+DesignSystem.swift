//
//  Margin+DesignSystem.swift
//  
//
//  Created by Matheus Gois on 07/09/21.
//

import Commons
import SwiftUI

public enum DSMargin: String {

    case smallXs, smallXxs, smallSm, smallMd, smallLg, smallXl, smallXxl, largeSm, largeXs, largeMd

    // Public properties

    public var value: CGFloat {
        let token = CommonsManager.shared.theme?.breakpoint?[rawValue] as? TokenDataModel<CGFloat>
        return token?.value ?? .zero
    }
}


// MARK: - Extensions

public extension CGFloat {
    static func ds(_ type: DSMargin) -> CGFloat {
        return type.value
    }
}
