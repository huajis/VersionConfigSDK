// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.2"
let checksum = "cac122fce428be733600d963c1dcd7959c9072b9de7ea73762ad6076dd97c19f"

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
