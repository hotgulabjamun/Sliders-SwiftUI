// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUI-Sliders",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftUI-Sliders",
            targets: ["SwiftUI-Sliders"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/hotgulabjamun/CGExtender.git", .branch("master")),
//        .package(url: "https://github.com/hotgulabjamun/SwiftUI-Shapes.git", .branch("master")),
//        .package(url: "https://github.com/hotgulabjamun/SwiftUI-bez.git", .branch("master")),

			.package(url: "https://github.com/hotgulabjamun/Swiftui-Sliders.git" , .branch("master")),
		.package(url: "https://github.com/hotgulabjamun/Swiftui-Shapes.git", .branch("master")),
		.package(url: "https://github.com/hotgulabjamun/SwiftUI-bez.git", .branch("master")),
		.package(url: "https://github.com/hotgulabjamun/CGExtender.git", .branch("master")),

        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftUI-Sliders",
//            dependencies: ["CGExtender", "SwiftUI-Shapes", "SwiftUI-bez"]
			dependencies: ["CGExtender", .product(name: "SwiftUI-Sliders", package: "Swiftui-Sliders"), .product(name: "SwiftUI-Shapes", package: "Swiftui-Shapes"), "SwiftUI-bez"]
		)
        // .testTarget(
        //     name: "SlidersTests",
        //     dependencies: ["Sliders"]),
    ]
)
