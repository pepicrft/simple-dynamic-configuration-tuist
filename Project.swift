import ProjectDescription

func frameworkNames() -> [any StringProtocol] {
    if case let .string(frameworkNames) = Environment.frameworkNames {
        return frameworkNames.split(separator: ",")
    } else {
        return ["JoanFramework"]
    }
}

let targets = frameworkNames().map { frameworkName in
    Target(name: "\(frameworkName)", platform: .macOS, product: .framework, bundleId: "com.joan.\(frameworkName)", sources: [
        "Sources/**/*.swift"
    ])
}

let project = Project(name: "Joan", targets: targets)
