extension Character {
    static let newLine: Character = "\n"
}

extension String {
    static let newLine = String(Character.newLine)
    static let indentation = "    "

    func indent() -> String {
        return String.indentation + self
    }
    
    var lines: [String] {
        return self.split(separator: Character.newLine).map(String.init)
    }
}
