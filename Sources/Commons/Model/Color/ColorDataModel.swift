//
//  ColorDataModel.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import Foundation

public struct ColorDataModel: Decodable {
    public let colorBlackOverlay: TokenDataModel<OptionalDecodableColor>?
    public let colorBlue: TokenDataModel<OptionalDecodableColor>?
    public let colorBlue800: TokenDataModel<OptionalDecodableColor>?
    public let colorBlue100: TokenDataModel<OptionalDecodableColor>?
    public let colorWhite: TokenDataModel<OptionalDecodableColor>?
    public let colorPink: TokenDataModel<OptionalDecodableColor>?
    public let colorPink800: TokenDataModel<OptionalDecodableColor>?
    public let colorPink200: TokenDataModel<OptionalDecodableColor>?
    public let colorBlack: TokenDataModel<OptionalDecodableColor>?
    public let colorBlack800: TokenDataModel<OptionalDecodableColor>?
    public let colorBlack300: TokenDataModel<OptionalDecodableColor>?
    public let colorBlack700: TokenDataModel<OptionalDecodableColor>?
    public let colorBlack200: TokenDataModel<OptionalDecodableColor>?
    public let colorBlack100: TokenDataModel<OptionalDecodableColor>?
    public let colorYellow: TokenDataModel<OptionalDecodableColor>?
    public let colorYellow800: TokenDataModel<OptionalDecodableColor>?
    public let colorYellow100: TokenDataModel<OptionalDecodableColor>?
    public let colorGreen: TokenDataModel<OptionalDecodableColor>?
    public let colorGreen800: TokenDataModel<OptionalDecodableColor>?
    public let colorGreen100: TokenDataModel<OptionalDecodableColor>?
    public let colorRed: TokenDataModel<OptionalDecodableColor>?
    public let colorRed800: TokenDataModel<OptionalDecodableColor>?
    public let colorRed100: TokenDataModel<OptionalDecodableColor>?
}
