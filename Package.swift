// Proxy Core Kit for IOS development
// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "ProxyCoreKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ProxyCoreKit",
            targets: ["ProxyCoreKitWrapper"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ProxyCoreKitWrapper",
            dependencies: ["ProxyCoreKitBinary"]
        ),
        .binaryTarget(
            name: "ProxyCoreKitBinary",
            url: "https://github.com/mahsanet/ProxyCoreKit/releases/download/7.0.3/ProxyCoreKit.xcframework.zip",
            checksum: "3fbd85f9532d41a19f579d05a68b781d0aa8a54d5df7ed2c8220fb6c7d5d60fb"
        )
    ]
)
