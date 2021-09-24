//
//  DSDefaultButtonTheme.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import UIKit

open class DSPrimaryButtonTheme: DSButtonTheme {
    open var titleFont: UIFont {
        return .ds(.heading4)
    }

    open var titleColor: UIColor {
        return .ds(.colorBlack)
    }

    open var backgroundColor: UIColor {
        return .ds(.colorYellow)
    }

    open var selectedBackgroundColor: UIColor {
        return .ds(.colorYellow800)
    }

    open var borderWidth: CGFloat {
        return .ds(.single)
    }

    open var borderRadius: CGFloat {
        return .ds(.single)
    }

    open var borderColor: UIColor {
        return .ds(.colorBlack)
    }
}
