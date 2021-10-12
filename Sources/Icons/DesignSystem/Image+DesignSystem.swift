//
//  File.swift
//  
//
//  Created by Matheus Gois on 24/09/21.
//

import Commons
import SwiftUI

/// Design System - Images
public enum DSImageSize: String, CaseIterable {

    // Cases

    case lg
    case md
    case sm

    // Computed Properties

    public var value: CGFloat {
        let token = CommonsManager.shared.theme?.avatar?[rawValue] as? TokenDataModel<CGFloat>
        return token?.value ?? .zero
    }
}
