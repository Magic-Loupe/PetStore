// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "PetStore",
    defaultLocalization: "en",
    platforms: [ .macOS(.v13), .iOS(.v16) ],
    products: [
        .library(name: "PetStore", targets: ["PetStore"]),
    ],
dependencies: [ .package(name: "swift-docc-plugin", url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/jectivex/JXPod", from: "0.2.0"),
        .package(url: "https://github.com/jectivex/JXSwiftUI", from: "0.1.7"),
    ],
    targets: [
        .target(name: "PetStore", dependencies: [
            .product(name: "JXPod", package: "JXPod"),
            .product(name: "JXSwiftUI", package: "JXSwiftUI"),
        ], resources: [
            .process("Resources"),
            .copy("*.js"),
        ]),
        .testTarget(
            name: "PetStoreTests",
            dependencies: ["PetStore"]),
    ]
)
