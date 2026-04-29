// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.3"
let checksum = "b64746b21218d6a9914498348aa550596baff9d4bf44de9254538ccf7daf0dd6"

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
