// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PianoAPI",
    products: [
        .library(name: "PianoAPI", targets: ["PianoAPI"]),
        .library(name: "PianoOAuth", targets: ["PianoOAuth"])
    ],
//    dependencies: [
//        .package(name: "Facebook", url: "https://github.com/facebook/facebook-ios-sdk", from: "11.0.0"),
//    ],
    targets: [
        .target(name: "PianoAPI", path: "PianoAPI", exclude: ["README.md"]),
        .target(
            name: "PianoOAuth",
//            dependencies: [
//                .product(name: "FacebookLogin", package: "Facebook")
//            ],
            path: "Sources",
            exclude: ["Composer", "OAuth/OAuth/Resources", "OAuth/OAuth/Info.plist"],
            sources: ["Common", "OAuth/OAuth"],
            resources: [.process("OAuth/OAuth/Resources"), .process("OAuth/OAuth/Info.plist")]
        )
    ]
)
