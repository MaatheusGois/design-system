//
//  BorderDataModel.swift
//  
//
//  Created by Matheus Gois on 07/09/21.
//

import CoreGraphics


public struct BorderDataModel: Decodable, PropertyReflectable {
    public let single: BorderTokenDataModel?
}

public struct BorderTokenDataModel: Decodable, PropertyReflectable {
    public let strokeWeight: TokenDataModel<CGFloat>?
}

