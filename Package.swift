import PackageDescription

let package = Package(
    name: "SwiftBitsetBenchmark",
    dependencies: [
   .Package(url: "https://github.com/lemire/SwiftBitset.git",  majorVersion: 0),
   .Package(url: "https://github.com/lemire/Swimsuit.git",  majorVersion: 0)
    ]
)
