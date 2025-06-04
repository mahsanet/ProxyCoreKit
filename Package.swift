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
            url: "https://github.com/mahsanet/ProxyCoreKit/releases/download/5.0.1/ProxyCoreKit.xcframework.zip",
            checksum: "0fdde84a0f555a143a17a4556def7cb72839cf09c290e72a438eaf15ef5635cd"
        )
    ]
)
