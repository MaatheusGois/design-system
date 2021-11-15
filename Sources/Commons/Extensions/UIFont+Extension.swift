//
//  File.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import SwiftUI

public extension UIFont {
    @available(watchOS 6.0, *)
    @available(iOS 13.0, *)
    var iOS13: Font { .init(self) }
}
