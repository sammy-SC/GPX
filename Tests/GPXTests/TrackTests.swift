import XCTest
@testable import GPX

final class TrackTests: XCTestCase {
    var node: Track!
    override func setUp() {
        super.setUp()
        node = Track()
        node.segments.append(TrackSegment.make())
    }
    func testGenerateNodeWithNameAndDescription() {
        var node = Track()
        node.name = "Test name"
        node.description = "Test description"
        node.segments.append(TrackSegment.make())

        let expectedResult = """
        <trk>
            <name>Test name</name>
            <desc>Test description</desc>
            <trkseg>
                <trkpt lat="10.0" lon="20.0">
                </trkpt>
            </trkseg>
        </trk>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    func testGenerateNodeWithName() {
        var node = Track()
        node.name = "Test name"
        node.segments.append(TrackSegment.make())

        let expectedResult = """
        <trk>
            <name>Test name</name>
            <trkseg>
                <trkpt lat="10.0" lon="20.0">
                </trkpt>
            </trkseg>
        </trk>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    func testGenerateNode() {
        var node = Track()
        node.segments.append(TrackSegment.make())

        let expectedResult = """
        <trk>
            <trkseg>
                <trkpt lat="10.0" lon="20.0">
                </trkpt>
            </trkseg>
        </trk>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    static var allTests = [
        ("testGenerateNodeWithNameAndDescription", testGenerateNodeWithNameAndDescription),
        ("testGenerateNodeWithName", testGenerateNodeWithName),
        ("testGenerateNode", testGenerateNodeWithName)
        ]
}
