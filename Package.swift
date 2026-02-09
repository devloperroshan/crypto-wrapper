// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CryptoWrapper",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CryptoWrapper",
            type: .static,
            targets: ["CryptoWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift.git",
            exact: "1.8.1"
        )
    ],
    targets: [
        .target(
            name: "CryptoWrapper",
            dependencies: ["CryptoSwift"]
        )
    ]
)