//
//  File.swift
//  
//
//  Created by Matheus Gois on 18/07/21.
//

import SwiftUI

/// Design System
public enum DSIcon: String, CaseIterable {

    // Cases
    case alignJustify = "align-justify"
    case alignLeft = "align-left"
    case alignRight = "align-right"
    case appleFill = "apple-fill"
    case appleOutlined = "apple-outlined"
    case arrowBack = "arrow-back"
    case bell
    case bold
    case bookmark
    case calendar
    case camera
    case check
    case chevronDown = "chevron-down"
    case chevronLeft = "chevron-left"
    case chevronRight = "chevron-right"
    case chevronUp = "chevron-up"
    case cloudDrizzle = "cloud-drizzle"
    case cloudLightning = "cloud-lightning"
    case cloudRain = "cloud-rain"
    case cloudSnow = "cloud-snow"
    case cloud
    case cross
    case edit
    case eye
    case facebook
    case fastForward = "fast-forward"
    case heartFill = "heart-fill"
    case image
    case instagram
    case italic
    case lock
    case mail
    case mapPin = "map-pin"
    case menu
    case messageCircle = "message-circle"
    case messageSquare = "message-square"
    case mic
    case minus
    case moreHorizontal = "more-horizontal"
    case navigation
    case pause
    case play
    case plus
    case `repeat`
    case rewind
    case search
    case send
    case share
    case shuffle
    case star
    case sun
    case twitter
    case underline
    case user
    case youtube

    // Computed Properties

    public var image: UIImage {
        return ImageManager(named: rawValue)!
    }
}
