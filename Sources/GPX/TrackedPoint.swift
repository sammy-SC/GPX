public struct TrackedPoint: GPXNode {
    public var location: Location
    public var elevation: Double?

    public init(location: Location) {
        self.location = location
    }

    func generateNode() -> String {
        var result = "<trkpt lat=\"\(location.latitude)\" lon=\"\(location.latitude)\">"

        if let elevation = elevation {
            let elevationNode = "<ele>\(elevation)</ele>"
            result += String.newLine
            result += elevationNode.indented()
        }

        result += String.newLine
        result += "</trkpt>"

        return result
    }
}
