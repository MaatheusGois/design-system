//
//  PropertyReflectable.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import Foundation

public protocol PropertyReflectable { }

public extension PropertyReflectable {
    subscript(key: String) -> Any? {
        let m = Mirror(reflecting: self)
        for child in m.children {
            if child.label == key { return child.value }
        }
        return nil
    }
}
