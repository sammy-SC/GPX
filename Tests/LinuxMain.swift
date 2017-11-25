import XCTest
@testable import GPXTests

XCTMain([
    testCase(TrackedPointTests.allTests),
    testCase(TrackSegmentTests.allTests),
    testCase(TrackTests.allTests),
    testCase(RootTests.allTests)
])

