public struct Track: GPXNode {
    public var segments = [TrackSegment]()
    public var name: String?
    public var description: String?

    public init() { }

    func generateNode() -> String {
        var result = "<trk>"

        if let name = name {
            result += "\(String.newLine)\(String.indentation)"
            result += "<name>\(name)</name>"
        }

        if let description = description {
            result += "\(String.newLine)\(String.indentation)"
            result += "<desc>\(description)</desc>"
        }

        result += "\n"
        result += generateTrackSegments()

        result += "\n</trk>"
        return result
    }

    private func generateNameTag() -> String {
        if let name = name {
            return "<name>\(name)</name>"
        } else {
            return ""
        }
    }

    private func generateDecriptionTag() -> String {
        if let description = description {
            return "<desc>\(description)</desc>"
        } else {
            return ""
        }
    }

    private func generateTrackSegments() -> String {
        return segments.reduce("") { result, segment in
            let node = segment.generateNode()
            let reduced = node.lines.map { $0.indent() }.joined(separator: String.newLine)
            return result + reduced
        }
    }
}
