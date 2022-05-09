// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SolidConstraints",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SolidConstraints",
            targets: ["SolidConstraints"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SolidConstraints",
            dependencies: []),
        .testTarget(
            name: "SolidConstraintsTests",
            dependencies: ["SolidConstraints"]
        ),
    ]
)
