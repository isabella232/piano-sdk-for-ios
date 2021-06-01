// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PianoAPI",
    products: [
        .library(name: "PianoAPI", targets: ["PianoAPI"])
    ],
    targets: [
        .target(name: "PianoAPI", path: "PianoAPI", exclude: ["README.md"]),
    ]
)
