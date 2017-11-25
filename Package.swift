// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "GPX", products: [.library(name: "GPX", targets: ["GPX"])],
            targets: [
                .target(name: "GPX"),
                .testTarget(name: "GPXTests", dependencies: ["GPX"]),
            ],
            swiftLanguageVersions: [4])
