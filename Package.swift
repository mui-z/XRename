// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XRename",
    platforms: [.macOS(.v10_13)],
    products: [
        .executable(name: "xrename", targets: ["XRename"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow", from: "4.0.1"),
        .package(url: "https://github.com/kylef/PathKit", from: "1.0.0"),
        .package(url: "https://github.com/jakeheis/SwiftCLI", from: "6.0.1"),
        .package(url: "https://github.com/appculture/xcode-project-renamer", from: "0.1.5")
    ],
    targets: [
        .executableTarget(name: "XRename", dependencies: ["XRenameCLI"]),
        .target(name: "XRenameCLI", dependencies: [
            "XRenameKit",
            "PathKit",
            "Rainbow",
            "SwiftCLI",
        ]),
        .target(name: "XRenameKit", dependencies: [
            "PathKit",
            "Rainbow"
        ]),
        .testTarget(
            name: "XRenameTests",
            dependencies: ["XRename"]
        ),
    ]
)
