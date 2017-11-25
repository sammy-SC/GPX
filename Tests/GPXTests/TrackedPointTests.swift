import XCTest
@testable import GPX

final class TrackedPointTests: XCTestCase {
    func testGenerateNode() {
        let node = TrackedPoint(location: Location(latitude: 10, longitude: 10))
        let expectedResult = """
        <trkpt lat="10.0" lon="10.0"></trkpt>
        """
        XCTAssertEqual(node.generateNode(), expectedResult)
    }

    static var allTests = [
        ("testGenerateNode", testGenerateNode),
        ]
}
