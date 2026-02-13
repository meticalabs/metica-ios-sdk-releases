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
    targets: [
        .binaryTarget(
            name: "MeticaSDKFramework",
            path: "./MeticaSDKFramework.xcframework"
        ),
        .target(
            name: "MeticaSDK",
            dependencies: [
                .target(name: "MeticaSDKFramework"),
            ],
            path: "Sources/MeticaSDKWrapper"
        )
    ]
)
