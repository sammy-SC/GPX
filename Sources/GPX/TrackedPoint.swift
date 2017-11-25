public struct TrackedPoint: GPXNode {
    public var location: Location

    public init(location: Location) {
        self.location = location
    }

    func generateNode() -> String {
        return """
        <trkpt lat="\(location.latitude)" lon="\(location.latitude)"></trkpt>
        """
    }
}
