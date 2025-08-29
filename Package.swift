// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "playground",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "playground",
            targets: ["playground"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", from: "1.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "playground",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "playgroundTests",
            dependencies: ["playground"]
        ),
    ]
)
