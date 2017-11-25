import Foundation

private let formatter = DateFormatter()

extension Date {
    private static let iso8601 = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
    var iso8601: String {
        formatter.dateFormat = Date.iso8601
        formatter.timeZone = TimeZone.UTC
        return formatter.string(from: self)
    }
}

extension TimeZone {
    static let UTC = TimeZone(identifier: "UTC")!
}
