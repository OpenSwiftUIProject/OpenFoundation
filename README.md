# OpenFoundation

The package provides CF-like macro for cross-platform SwiftPM C target.

> You can only import CoreFoundation on C target in Darwin platform.

## Usage

First add the dependency in your `Package.swift`:

```swift
let package = Package(
    name: "DemoKit",
    products: [
        .library(name: "DemoKit", targets: ["DemoKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kyle-Ye/OpenFoundation", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "DemoKit",
            dependencies: [
                .product(name: "OpenFoundation", package: "OpenFoundation")
            ]
        ),
    ]
)
```

Then in your C code, you can include `OpenFoundation/OpenFoundation.h` on non-Darwin platform.
```c
#include <OpenFoundation/OpenFoundation.h>
```

## License

Most of the code is from [apple/swift-corelibs-foundation](https://github.com/apple/swift-corelibs-foundation) with small modification.

This repo is released under the Apache license. See [LICENSE](LICENSE) for details.
