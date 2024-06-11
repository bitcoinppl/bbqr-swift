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
            checksum: "206f6ef409042c1065f36ad1230b3e640cae067a4e08bb655bc46f37c6bccd97"
        ),
        .target(
            name: "Bbqr",
            dependencies: ["bbqrffiFFI"]
        ),
    ]
)
