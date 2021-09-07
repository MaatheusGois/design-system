//
//  DSButtonTheme.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import Foundation

public protocol DSButtonTheme: AnyObject {
    // shape
    var backgroundColor: UIColor { get }
    var selectedBackgroundColor: UIColor { get }
    var borderWidth: CGFloat { get }
    var borderColor: UIColor { get }
}
