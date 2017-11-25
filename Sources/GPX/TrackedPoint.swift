import Foundation

public struct TrackedPoint: GPXNode {
    public var location: Location
    public var elevation: Double?
    public var time: Date?

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

        if let timestamp = time {
            let timeNode = "<time>\(timestamp.iso8601)</time>"
            result += String.newLine
            result += timeNode.indented()
        }

        result += String.newLine
        result += "</trkpt>"

        return result
    }
}
