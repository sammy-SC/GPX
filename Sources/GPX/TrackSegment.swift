import Foundation

public struct TrackSegment: GPXNode {
    public var points = [TrackedPoint]()
    public init() { }
    
    func generateNode() -> String {
        let innerNodes = points.reduce("") { result, point in
            return result + point.generateNode()
        }

        return """
        <trkseg>
            \(innerNodes)
        </trkseg>
        """
    }
}
