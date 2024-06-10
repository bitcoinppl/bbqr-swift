# bbqr-swift

This project is only used to publish a [Swift] package manager package called `bbqr-swift` with language bindings and corresponding Bbqr.xcframework for the
`Bbqr` framework created by the [bbqr-ffi] project. The Swift language bindings files are created by the [bbqr-ffi] `./bbqr-ffi` sub-project which are copied into, committed and tagged in this `bbqr-swift` repo by the `publish-spm` github actions workflow.

Any changes to the `bbqr-swift` Swift package must be made via the [bbqr-ffi] repo.

## How to Use

To use the Swift language bindings for `Bbqr` in your [Xcode] iOS or MacOS project:

1. Add the "bbqr-swift" package from the repo https://github.com/bitcoindevkit/bbqr-swift and select one of the latest minor versions.
2. Add the `Bbqr` framework in your Target config.
3. Import and use the `Bbqr` library in your Swift code. For example:

   ```swift
   import Bbqr

   ...
   ```

See example app at: [example app]

[Swift]: https://developer.apple.com/swift/
[Xcode]: https://developer.apple.com/documentation/Xcode
[bbqr-ffi]: https://github.com/bitcoinppl/bbqr-ffi
[example-app]: https://github.com/bitcoinppl/bbqr-ffi/blob/master/examples/apple-multiplatform-spm/QrDemo/QrDemo/ContentView.swift
