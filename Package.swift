// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "HUDHero",
    platforms: [
      .iOS(.v15),
      .macOS(.v12),
      .tvOS(.v13),
      .watchOS(.v6),
      .visionOS(.v1)
    ],
    products: [
        .library(
            name: "HUDHero",
            targets: ["HUDHero"])
    ],
    targets: [
        .target(
            name: "HUDHero"),
        .testTarget(
            name: "HUDHeroTests",
            dependencies: ["HUDHero"])
    ]
)
