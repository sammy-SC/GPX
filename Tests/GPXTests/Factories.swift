import GPX

extension TrackSegment {
    static func make() -> TrackSegment {
        var node = TrackSegment()
        node.points.append(TrackedPoint(location: Location(latitude: 10, longitude: 20)))
        return node
    }
}

extension Track {
    static func make() -> Track {
        var node = Track()
        node.name = "Test name"
        node.description = "Test description"
        node.segments.append(TrackSegment.make())
        return node
    }
}
