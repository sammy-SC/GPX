extension Character {
    static let newLine: Character = "\n"
}

extension String {
    static let newLine = String(Character.newLine)
    static let indentation = "    "

    func indented() -> String {
        return String.indentation + self
    }

    func indentedAllLines() -> String {
        return lines
            .map { $0.indented() }
            .joined(separator: String.newLine)
    }
    
    var lines: [String] {
        return self.split(separator: Character.newLine).map(String.init)
    }
}
