//
//  DSDefaultButtonTheme.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import UIKit

open class DSDefaultButtonTheme: DSButtonTheme {
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
        return .clear
    }
}
