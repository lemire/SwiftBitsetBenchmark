// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftBitsetBenchmark",
    dependencies: [
   .package(url: "https://github.com/lemire/SwiftBitset.git", from: "0.3.2"),
   .package(url: "https://github.com/lemire/Swimsuit.git", from: "0.1.3")
    ],
    targets: [
        .target(
            name: "SwiftBitsetBenchmark",
            dependencies: ["Bitset", "Swimsuit"]),
    ]
)
