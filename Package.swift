// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Home", targets: ["Home"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adedwi1808/game-catalogue-Core-package.git", from: "1.0.3"),
        .package(url: "https://github.com/adedwi1808/game-catalogue-Common-package.git", from: "1.0.3"),
        .package(url: "https://github.com/adedwi1808/game-catalogue-Components-package.git", from: "1.0.3"),
        
        .package(url: "https://github.com/Juanpe/SkeletonView.git", from: "1.31.0")
    ],
    targets: [
        .target(
            name: "Home",
            dependencies: [
                .product(name: "Core", package: "game-catalogue-Core-package"),
                .product(name: "Common", package: "game-catalogue-Common-package"),
                .product(name: "Components", package: "game-catalogue-Components-package"),
                "SkeletonView"
            ]
        ),
    ]
)
