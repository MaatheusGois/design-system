//
//  DSLabelTheme.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import UIKit

public protocol DSLabelTheme: AnyObject {
    var textColor: UIColor { get }
    var fontSize: UIColor { get }
    var font: UIFont { get }
}
