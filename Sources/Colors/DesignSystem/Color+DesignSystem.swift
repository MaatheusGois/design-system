//
//  Color+DesignSystem.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import Commons
import UIKit

/// Colors - Design System
public enum DSColor {

    // Private properties

    public static var colors: ColorDataModel? { CommonsManager.shared.theme?.color }

    // Public properties

    public static var colorBlackOverlay: UIColor { colors?.colorBlackOverlay?.value.color ?? .white }
    public static var colorBlue: UIColor { colors?.colorBlue?.value.color ?? .white }
    public static var colorBlue800: UIColor { colors?.colorBlue800?.value.color ?? .white }
    public static var colorBlue100: UIColor { colors?.colorBlue100?.value.color ?? .white }
    public static var colorWhite: UIColor { colors?.colorWhite?.value.color ?? .white }
    public static var colorPink: UIColor { colors?.colorPink?.value.color ?? .white }
    public static var colorPink800: UIColor { colors?.colorPink800?.value.color ?? .white }
    public static var colorPink200: UIColor { colors?.colorPink200?.value.color ?? .white }
    public static var colorBlack: UIColor { colors?.colorBlack?.value.color ?? .white }
    public static var colorBlack800: UIColor { colors?.colorBlack800?.value.color ?? .white }
    public static var colorBlack300: UIColor { colors?.colorBlack300?.value.color ?? .white }
    public static var colorBlack700: UIColor { colors?.colorBlack700?.value.color ?? .white }
    public static var colorBlack200: UIColor { colors?.colorBlack200?.value.color ?? .white }
    public static var colorBlack100: UIColor { colors?.colorBlack100?.value.color ?? .white }
    public static var colorYellow: UIColor { colors?.colorYellow?.value.color ?? .white }
    public static var colorYellow800: UIColor { colors?.colorYellow800?.value.color ?? .white }
    public static var colorYellow100: UIColor { colors?.colorYellow100?.value.color ?? .white }
    public static var colorGreen: UIColor { colors?.colorGreen?.value.color ?? .white }
    public static var colorGreen800: UIColor { colors?.colorGreen800?.value.color ?? .white }
    public static var colorGreen100: UIColor { colors?.colorGreen100?.value.color ?? .white }
    public static var colorRed: UIColor { colors?.colorRed?.value.color ?? .white }
    public static var colorRed800: UIColor { colors?.colorRed800?.value.color ?? .white }
    public static var colorRed100: UIColor { colors?.colorRed100?.value.color ?? .white }
}
