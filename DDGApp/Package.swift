// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

fileprivate struct ModuleName {
    let name: String
    var testName: String {
        "\(self.name)Tests"
    }
    
    var dependecyName: Target.Dependency {
        Target.Dependency(stringLiteral: self.name)
    }
    
    init(_ name: String) {
        self.name = name
    }
}

fileprivate let ddgApp = ModuleName("DDGApp")
fileprivate let ddgBusiness = ModuleName("DDGBusiness")
fileprivate let ddgView = ModuleName("DDGView")
fileprivate let ddgCKService = ModuleName("DDGCKService")

let package = Package(
    name: ddgApp.name,
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(
            name: ddgBusiness.name,
            targets: [ddgBusiness.name]
        ),
        .library(
            name: ddgView.name,
            targets: [ddgView.name]
        ),
        .library(
            name: ddgCKService.name,
            targets: [ddgCKService.name]
        ),
    ],
    targets: [
        .target(
            name: ddgView.name,
            dependencies: [ddgBusiness.dependecyName]
        ),
        .testTarget(
            name: ddgView.testName,
            dependencies: [ddgView.dependecyName]
        ),
        .target(name: ddgBusiness.name),
        .testTarget(
            name: ddgBusiness.testName,
            dependencies: [ddgBusiness.dependecyName]
        ),
        .target(
            name: ddgCKService.name,
            dependencies: [ddgBusiness.dependecyName]
        ),
        .testTarget(
            name: ddgCKService.testName,
            dependencies: [ddgCKService.dependecyName]
        ),
    ]
)
