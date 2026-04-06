// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let checksum = "67bd8b017166db6bc0da8d5d3691ff6b9c360f1d13752582bb1378040fad233b"

let package = Package(
    name: "VersionConfigSDK",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "VersionConfigSDK",
            targets: ["VersionConfigSDKXCFramework"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "VersionConfigSDKXCFramework",
            url: "https://github.com/huajis/VersionConfigSDK/releases/download/\(version)/VersionConfigSDK.xcframework.zip",
            checksum: checksum
        ),
    ]
)
