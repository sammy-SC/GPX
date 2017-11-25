import XCTest
@testable import GPX

final class TrackSegmentTests: XCTestCase {
    func testGenerateNode() {
        var node = TrackSegment()
        node.points.append(TrackedPoint(location: Location(latitude: 10, longitude: 10)))
        let expectedResult = """
        <trkseg>
            <trkpt lat="10.0" lon="10.0">
            </trkpt>
        </trkseg>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    func testsGenerateNodeWithTwoPoints() {
        var node = TrackSegment()
        node.points.append(TrackedPoint(location: Location(latitude: 10, longitude: 10)))
        node.points.append(TrackedPoint(location: Location(latitude: 20, longitude: 20)))
        let expectedResult = """
        <trkseg>
            <trkpt lat="10.0" lon="10.0">
            </trkpt>
            <trkpt lat="20.0" lon="20.0">
            </trkpt>
        </trkseg>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    static var allTests = [
        ("testGenerateNode", testGenerateNode),
        ]
}

