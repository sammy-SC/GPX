public struct Root: GPXNode {
    private let creator: String
    private let version = "1.1"
    public var tracks = [Track]()

    public init(creator: String) {
        self.creator = creator
    }

    public func generateNode() -> String {
        var result = """
        <?xml version="1.0" encoding="UTF-8"?>
        <gpx xmlns="http://www.topografix.com/GPX/1/1" version="\(version)" creator="\(creator)">
        """

        result += "\(String.newLine)"

        let tracks = self.tracks
            .map { $0.generateNode() }
            .joined(separator: String.newLine)
            .lines.map { $0.indented() }
            .joined(separator: String.newLine)

        result += tracks

        result += "</gpx>"
        return result
    }
}
