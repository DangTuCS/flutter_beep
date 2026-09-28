// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_beep",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "flutter-beep", targets: ["flutter_beep"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_beep",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            path: "Classes",
            sources: ["FlutterBeepPlugin.m"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedFramework("AudioToolbox")
            ]
        )
    ]
)
