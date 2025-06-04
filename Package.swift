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
            url: "https://github.com/mahsanet/ProxyCoreKit/releases/download/5.0.0/ProxyCoreKit.xcframework.zip",
            checksum: "9f29c547e951cfb9a0dd0a36ab020be204d5be8d1610b7b2131d9325f0a721d9"
        )
    ]
)
