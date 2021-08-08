//
//  Color+DesignSystem.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import Commons
import UIKit

public enum DSColor {
    public static var colorBlackOverlay: UIColor { CommonsManager.shared.theme?.colors?.colorBlackOverlay?.value.color ?? .white }
    public static var colorBlue: UIColor { CommonsManager.shared.theme?.colors?.colorBlue?.value.color ?? .white }
    public static var colorBlue800: UIColor { CommonsManager.shared.theme?.colors?.colorBlue800?.value.color ?? .white }
    public static var colorBlue100: UIColor { CommonsManager.shared.theme?.colors?.colorBlue100?.value.color ?? .white }
    public static var colorWhite: UIColor { CommonsManager.shared.theme?.colors?.colorWhite?.value.color ?? .white }
    public static var colorPink: UIColor { CommonsManager.shared.theme?.colors?.colorPink?.value.color ?? .white }
    public static var colorPink800: UIColor { CommonsManager.shared.theme?.colors?.colorPink800?.value.color ?? .white }
    public static var colorPink200: UIColor { CommonsManager.shared.theme?.colors?.colorPink200?.value.color ?? .white }
    public static var colorBlack: UIColor { CommonsManager.shared.theme?.colors?.colorBlack?.value.color ?? .white }
    public static var colorBlack800: UIColor { CommonsManager.shared.theme?.colors?.colorBlack800?.value.color ?? .white }
    public static var colorBlack300: UIColor { CommonsManager.shared.theme?.colors?.colorBlack300?.value.color ?? .white }
    public static var colorBlack700: UIColor { CommonsManager.shared.theme?.colors?.colorBlack700?.value.color ?? .white }
    public static var colorBlack200: UIColor { CommonsManager.shared.theme?.colors?.colorBlack200?.value.color ?? .white }
    public static var colorBlack100: UIColor { CommonsManager.shared.theme?.colors?.colorBlack100?.value.color ?? .white }
    public static var colorYellow: UIColor { CommonsManager.shared.theme?.colors?.colorYellow?.value.color ?? .white }
    public static var colorYellow800: UIColor { CommonsManager.shared.theme?.colors?.colorYellow800?.value.color ?? .white }
    public static var colorYellow100: UIColor { CommonsManager.shared.theme?.colors?.colorYellow100?.value.color ?? .white }
    public static var colorGreen: UIColor { CommonsManager.shared.theme?.colors?.colorGreen?.value.color ?? .white }
    public static var colorGreen800: UIColor { CommonsManager.shared.theme?.colors?.colorGreen800?.value.color ?? .white }
    public static var colorGreen100: UIColor { CommonsManager.shared.theme?.colors?.colorGreen100?.value.color ?? .white }
    public static var colorRed: UIColor { CommonsManager.shared.theme?.colors?.colorRed?.value.color ?? .white }
    public static var colorRed800: UIColor { CommonsManager.shared.theme?.colors?.colorRed800?.value.color ?? .white }
    public static var colorRed100: UIColor { CommonsManager.shared.theme?.colors?.colorRed100?.value.color ?? .white }
}
