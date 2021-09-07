//
//  File.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import CoreGraphics

public struct FontDataModel: Decodable, PropertyReflectable {
    public let heading1: FontTokenDataModel?
    public let heading2: FontTokenDataModel?
    public let heading3: FontTokenDataModel?
    public let heading4: FontTokenDataModel?
    public let subtitle1: FontTokenDataModel?
    public let subtitle2: FontTokenDataModel?
    public let paragraph: FontTokenDataModel?
}

public struct FontTokenDataModel: Decodable, PropertyReflectable {
    public let fontSize: TokenDataModel<CGFloat>?
    public let textDecoration: TokenDataModel<String>?
    public let fontFamily: TokenDataModel<String>?
    public let fontWeight: TokenDataModel<Int>?
    public let fontStyle: TokenDataModel<String>?
    public let fontStretch: TokenDataModel<String>?
    public let _fontStyleOld: TokenDataModel<String>?
    public let letterSpacing: TokenDataModel<Int>?
    public let lineHeight: TokenDataModel<Int>?
    public let paragraphIndent: TokenDataModel<Int>?
    public let paragraphSpacing: TokenDataModel<Int>?
    public let textCase: TokenDataModel<String>?
}
