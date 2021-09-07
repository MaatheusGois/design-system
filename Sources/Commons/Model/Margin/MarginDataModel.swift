//
//  MarginDataModel.swift
//  
//
//  Created by Matheus Gois on 07/09/21.
//

import CoreGraphics

public struct BreakpointDataModel: Decodable, PropertyReflectable {
    public let smallXs: TokenDataModel<CGFloat>?
    public let smallXxs: TokenDataModel<CGFloat>?
    public let smallSm: TokenDataModel<CGFloat>?
    public let smallMd: TokenDataModel<CGFloat>?
    public let smallLg: TokenDataModel<CGFloat>?
    public let smallXl: TokenDataModel<CGFloat>?
    public let smallXxl: TokenDataModel<CGFloat>?
    public let largeSm: TokenDataModel<CGFloat>?
    public let largeXs: TokenDataModel<CGFloat>?
    public let largeMd: TokenDataModel<CGFloat>?
}
