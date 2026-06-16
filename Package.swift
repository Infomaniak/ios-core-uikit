// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InfomaniakCoreUIKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "InfomaniakCoreUIKit",
            targets: ["InfomaniakCoreUIKit"]
        ),
        .library(
            name: "IKSnackbar",
            targets: ["IKSnackbar"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Infomaniak/ios-core-ui", .upToNextMajor(from: "25.0.0")),
        .package(url: "https://github.com/Infomaniak/SnackBar.swift", .upToNextMajor(from: "1.2.0"))
    ],
    targets: [
        .target(
            name: "InfomaniakCoreUIKit",
            dependencies: [
                .product(name: "InfomaniakCoreCommonUI", package: "ios-core-ui")
            ]
        ),
        .target(
            name: "IKSnackbar",
            dependencies: [
                .product(name: "InfomaniakCoreCommonUI", package: "ios-core-ui"),
                .product(name: "SnackBar", package: "SnackBar.swift")
            ]
        )
    ]
)
