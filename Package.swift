// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenFoundation",
    products: [
        .library(name: "OpenFoundation", targets: ["OpenFoundation"]),
    ],
    targets: [
        .target(
            name: "OpenFoundation",
            cSettings: [
                .define("OF_BUILDING_OF"),
                .headerSearchPath("include/OpenFoundation"),
            ]
        ),
    ]
)
