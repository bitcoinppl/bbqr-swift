// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Bbqr",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Bbqr",
            targets: ["Bbqr", "bbqrffiFFI"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "bbqrffiFFI",
            url: "https://github.com/bitcoinppl/bbqr-swift/releases/download/0.3.1/Bbqr.xcframework.zip",
            checksum: "203f209779393670627eb123dde09e5f54e3fce8eccfc1b631399a91e4112fae"
        ),
        .target(
            name: "Bbqr",
            dependencies: ["bbqrffiFFI"]
        ),
    ]
)
