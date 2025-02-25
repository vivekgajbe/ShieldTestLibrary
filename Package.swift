// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShieldTestLibrary",
    platforms: [
           .iOS(.v12) // iOS version target
       ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ShieldTestLibrary",
            targets: ["ShieldTestSDK"]),
    ],
    targets: [
        // The destination of the framework you will obfuscate the code
    .binaryTarget(name: "ShieldTestSDK", path: "./Sources/ShieldTestSDK.xcframework"),

        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .target(
            name: "ShieldTestLibrary"),
        .testTarget(
            name: "ShieldTestLibraryTests",
            dependencies: ["ShieldTestLibrary"]
                    ),
    ]
)
