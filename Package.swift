// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ActionClosurable",
    platforms: [.iOS("13.0")],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ActionClosurable",
            targets: ["ActionClosurable"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ActionClosurable"),
        .testTarget(
            name: "ActionClosurableTests",
            dependencies: ["ActionClosurable"]),
    ]
)
