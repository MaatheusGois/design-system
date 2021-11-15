//
//  File.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import UIKit
import SwiftUI

public extension UIColor {
    convenience init(rgba: String) {
        let cleanRgba = rgba
            .replacingOccurrences(of: "rgba(", with: "")
            .replacingOccurrences(of: ")", with: "")
            .replacingOccurrences(of: " ", with: "")
            .split(separator: ",")
            .map {CGFloat(Double($0) ?? .zero)}

        self.init(
            r: cleanRgba[0],
            g: cleanRgba[1],
            b: cleanRgba[2],
            a: cleanRgba[3]
        )
    }

    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    // MARK: - Properties

    @available(iOS 13.0, *)
    var iOS13: Color { .init(self) }
}
