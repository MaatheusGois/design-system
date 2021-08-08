//
//  File.swift
//  
//
//  Created by Matheus Gois on 08/08/21.
//

import UIKit

public struct FontDataModel: Decodable {
    let heading1: FontTokenDataModel?
    let heading2: FontTokenDataModel?
    let heading3: FontTokenDataModel?
    let heading4: FontTokenDataModel?
    let subtitle1: FontTokenDataModel?
    let subtitle2: FontTokenDataModel?
    let paragraph: FontTokenDataModel?
}

public struct FontTokenDataModel: Decodable {
    let fontSize: TokenDataModel<Int>?
    let textDecoration: TokenDataModel<String>?
    let fontFamily: TokenDataModel<String>?
    let fontWeight: TokenDataModel<Int>?
    let fontStyle: TokenDataModel<String>?
    let fontStretch: TokenDataModel<String>?
    let _fontStyleOld: TokenDataModel<String>?
    let letterSpacing: TokenDataModel<Int>?
    let lineHeight: TokenDataModel<Int>?
    let paragraphIndent: TokenDataModel<Int>?
    let paragraphSpacing: TokenDataModel<Int>?
    let textCase: TokenDataModel<String>?
}
