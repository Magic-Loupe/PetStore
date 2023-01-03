// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "PetStore",
    products: [
        .library(name: "PetStore", targets: ["PetStore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jectivex/JXPod", from: "0.2.0"),
        .package(url: "https://github.com/jectivex/JXSwiftUI", from: "0.1.7"),
    ],
    targets: [
        .target(name: "PetStore", dependencies: [
            .product(name: "JXPod", package: "JXPod"),
            .product(name: "JXSwiftUI", package: "JXSwiftUI"),
            ]),
        .testTarget(
            name: "PetStoreTests",
            dependencies: ["PetStore"]),
    ]
)
