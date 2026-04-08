// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.1"
let checksum = "78025b0eb86629316c0628cdaf15fa24c98390ff439c841c088127c83d24ac7b"

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
