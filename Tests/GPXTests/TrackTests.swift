import XCTest
@testable import GPX

final class TrackTests: XCTestCase {
    func testGenerateNode() {
        var node = Track()
        node.name = "Test name"
        node.description = "Test description"
        node.segments.append(TrackSegment.make())

        let expectedResult = """
        <trk>
            <name>Test name</name>
            <desc>Test description</desc>
            <trkseg>
                <trkpt lat="10.0" lon="10.0"></trkpt>
            </trkseg>
        </trk>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    static var allTests = [
        ("testGenerateNode", testGenerateNode),
        ]
}
