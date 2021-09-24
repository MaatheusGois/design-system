//
//  DSSecondaryButtonTheme.swift
//  
//
//  Created by Matheus Gois on 20/09/21.
//

import SwiftUI

open class DSSecondaryButtonTheme: DSButtonTheme {
    open var titleFont: UIFont {
        return .ds(.heading4)
    }

    open var titleColor: UIColor {
        return .ds(.colorWhite)
    }

    open var backgroundColor: UIColor {
        return .ds(.colorBlack)
    }

    open var selectedBackgroundColor: UIColor {
        return .ds(.colorBlack800)
    }

    open var borderWidth: CGFloat {
        return .zero
    }

    open var borderRadius: CGFloat {
        return .ds(.single)
    }

    open var borderColor: UIColor {
        return .ds(.colorBlack)
    }
}
