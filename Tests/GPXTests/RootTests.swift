import XCTest
@testable import GPX

final class RootTests: XCTestCase {
    func testGenerateNode() {
        var node = Root(creator: "GPX")
        node.tracks.append(Track.make())

        let expectedHeader = """
        <?xml version="1.0" encoding="UTF-8"?>
        <gpx xmlns="http://www.topografix.com/GPX/1/1" version="1.1" creator="GPX">
        """

        let gpx = node.generateNode()

        XCTAssert(gpx.starts(with: expectedHeader))
        XCTAssert(gpx.contains("<trk>"))
        XCTAssert(gpx.contains("</trk>"))
        XCTAssert(gpx.contains("<trkseg>"))
        XCTAssert(gpx.contains("</trkseg>"))
    }

    static var allTests = [
        ("testGenerateNode", testGenerateNode),
        ]
}


