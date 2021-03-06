// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Greebler",
    platforms: [
        .macOS(.v10_15), .iOS(.v13),
    ],
    products: [
        .library(
            name: "Greebler",
            targets: ["Greebler"]),
    ],
    dependencies: [
        .package(name: "Dunesailer Utilities", url: "https://github.com/dunesailer/Utilities.git", from: "1.0.1"),
        .package(name: "Aesthete", url: "https://github.com/dunesailer/Aesthete.git", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "Greebler",
            dependencies: [.product(name: "DunesailerUtilities", package: "Dunesailer Utilities"),
                           .product(name: "Aesthete", package: "Aesthete")]),
        .testTarget(
            name: "GreeblerTests",
            dependencies: ["Greebler"]),
    ]
)
