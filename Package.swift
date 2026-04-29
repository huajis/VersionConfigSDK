// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.4"
let checksum = "55e9ed33a1d6ce8602c019f109ccb6a41850885d79fcd01c00fda6ffcd82fd3f"

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
