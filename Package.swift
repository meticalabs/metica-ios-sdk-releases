// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MeticaSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "MeticaSDK",
            targets: ["MeticaSDK"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .exact("13.2.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "MeticaSDKFramework",
            path: "./MeticaSDKFramework.xcframework"
        ),
        .target(
            name: "MeticaSDK",
            dependencies: [
                .target(name: "MeticaSDKFramework"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/MeticaSDKWrapper"
        )
    ]
)
