import XCTest
@testable import GPX

final class TrackedPointTests: XCTestCase {
    func testGenerateNode() {
        let node = TrackedPoint(location: Location(latitude: 10, longitude: 20))
        let expectedResult = """
        <trkpt lat="10.0" lon="20.0">
        </trkpt>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    func testGenerateNodeWithElevation() {
        var node = TrackedPoint(location: Location(latitude: 10, longitude: 20))
        node.elevation = 4.46
        let expectedResult = """
        <trkpt lat="10.0" lon="20.0">
            <ele>4.46</ele>
        </trkpt>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    func testGenerateNodeWithTime() {
        var node = TrackedPoint(location: Location(latitude: 10, longitude: 20))
        node.time = Date(timeIntervalSince1970: 1255804646)
        let expectedResult = """
        <trkpt lat="10.0" lon="20.0">
            <time>2009-10-17T18:37:26Z</time>
        </trkpt>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    static var allTests = [
        ("testGenerateNode", testGenerateNode),
        ("testGenerateNodeWithElevation", testGenerateNodeWithElevation),
        ("testGenerateNodeWithTime", testGenerateNodeWithTime)
        ]
}
