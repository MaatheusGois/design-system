// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Colors",
            targets: ["Colors"]
        ),
        .library(
            name: "Fonts",
            targets: ["Fonts"]
        ),
        .library(
            name: "Images",
            targets: ["Images"]
        ),
        .library(
            name: "Sample",
            targets: ["Sample"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Colors",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Fonts",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Images",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Sample",
            dependencies: [
                "Colors",
                "Images",
                "Fonts"
            ]
        ),
        .testTarget(
            name: "ImagesTests",
            dependencies: ["Images"]
        )
    ]
)
