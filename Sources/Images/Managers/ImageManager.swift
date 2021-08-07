//
//  ImageManager.swift
//  
//
//  Created by Matheus Gois on 18/07/21.
//

import SwiftUI

/// Get image from xcassets
/// - Parameter name: image name
/// - Returns: image source
public func ImageManager(named name: String) -> UIImage? {
    UIImage(named: name, in: .module, compatibleWith: nil)
}
