import Foundation

public struct TrackSegment: GPXNode {
    public var points = [TrackedPoint]()
    public init() { }
    
    func generateNode() -> String {
        let innerNodes = points
            .map { $0.generateNode() }
            .joined(separator: String.newLine)
            .indexAllLines()
        return """
        <trkseg>
        \(innerNodes)
        </trkseg>
        """
    }
}
