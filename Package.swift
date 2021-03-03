// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vapor-soto",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "VaporSoto", targets: ["VaporSoto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/soto-project/soto-core.git", from: "5.0.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ],
    targets: [
        .target(name: "VaporSoto",
            dependencies: [
                .product(name: "SotoCore", package: "soto-core"),
                .product(name: "Vapor", package: "vapor"),
            ]
        ),
    ]
)
