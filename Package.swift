// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystemPackage",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Commons",
            type: .static,
            targets: ["Commons"]
        ),
        .library(
            name: "Colors",
            type: .static,
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
            name: "DesignSystem",
            targets: ["DesignSystem"]
        ),
        .library(
            name: "Margin",
            targets: ["Margin"]
        ),
        .library(
            name: "Border",
            targets: ["Border"]
        )
    ],
    dependencies: [
        .package(name: "SnapshotTesting", url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.9.0")
    ],
    targets: [
        .target(
            name: "Commons",
            dependencies: []
        ),
        .target(
            name: "Colors",
            dependencies: ["Commons"],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Fonts",
            dependencies: ["Commons"],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Images",
            dependencies: ["Commons"],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Margin",
            dependencies: ["Commons"],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "Border",
            dependencies: ["Commons"],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "DesignSystem",
            dependencies: [
                "Commons",
                "Images",
                "Colors",
                "Fonts",
                "Margin",
                "Border"
            ]
        ),
        .testTarget(
            name: "IconsTests",
            dependencies: ["Images", "SnapshotTesting"]
        )
    ]
)
