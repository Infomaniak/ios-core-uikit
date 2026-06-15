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
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Infomaniak/ios-core-ui", branch: "chore/extract-CoreUIKit")
    ],
    targets: [
        .target(
            name: "InfomaniakCoreUIKit",
            dependencies: [
                .product(name: "InfomaniakCoreCommonUI", package: "ios-core-ui")
            ]
        )
    ]
)
