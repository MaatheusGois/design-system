//
//  File.swift
//  
//
//  Created by Matheus Gois on 24/09/21.
//

import Commons
import SwiftUI

/// Design System - Images
public enum DSImage: String, CaseIterable {

    // Cases

    case lg
    case md
    case sm

    // Computed Properties

    public var value: CGFloat {
        let token = CommonsManager.shared.theme?.image?[rawValue] as? TokenDataModel<CGFloat>
        return token?.value ?? .zero
    }
}
