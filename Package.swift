// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "HUDHero",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
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
