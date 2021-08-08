//
//  CommonsManager.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import Foundation

public struct CommonsManager {

    // LifeCycle

    private init() {}
    public static var shared = CommonsManager()

    // Properties

    public var theme: ThemeDataModel?
}
