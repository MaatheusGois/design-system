//
//  ImageDataModel.swift
//  
//
//  Created by Matheus Gois on 24/09/21.
//

import CoreGraphics

public class AvatarDataModel: Decodable, PropertyReflectable {
    public var lg: TokenDataModel<CGFloat>?
    public let md: TokenDataModel<CGFloat>?
    public let sm: TokenDataModel<CGFloat>?
}
