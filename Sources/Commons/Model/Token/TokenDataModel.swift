//
//  TokenDataModel.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import UIKit

public struct ThemeDataModel: Decodable {
    public let color: ColorDataModel?
    public let font: FontDataModel?
    public let breakpoint: BreakpointDataModel?
    public let border: BorderDataModel?
}

public struct TokenDataModel<T: Decodable>: Decodable {
    public let value: T
}

public struct OptionalDecodableColor: Decodable {
    public let color: UIColor?

    public init(color: UIColor?) {
        self.color = color
    }

    public init(from decoder: Decoder) throws {
        if let rgba = try? decoder.singleValueContainer().decode(String.self) {
            self.color = .init(rgba: rgba)
        } else {
            self.color = nil
        }
    }
}
