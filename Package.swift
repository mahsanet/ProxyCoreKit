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
            url: "https://github.com/mahsanet/ProxyCoreKit/releases/download/3.1.0/ProxyCoreKit.xcframework.zip",
            checksum: "5f4d66accd036b0bd85543bf9e2426383df13ee606499dfe792833ec773cbd15"
        )
    ]
)
