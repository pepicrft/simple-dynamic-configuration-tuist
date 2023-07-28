import ProjectDescription

func frameworkNames() -> [any StringProtocol] {
    if case let .string(frameworkNames) = Environment.frameworkNames {
        return frameworkNames.split(separator: ",")
    } else {
        return ["Default"]
    }
}

let targets = frameworkNames().map { frameworkName in
    Target(name: "\(frameworkName)", platform: .macOS, product: .framework, bundleId: "io.tuist.\(frameworkName)", sources: [
        "Sources/**/*.swift"
    ])
}

let project = Project(name: "Tuist", targets: targets)
