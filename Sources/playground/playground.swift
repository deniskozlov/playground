public struct PlayGreeter {
    public init() {}

    public func greet(name: String) -> String {
        let locale = "de"
        do {
            let greeting = try Phrasebook.word(for: locale)
            return "\(greeting) \(name)! Welcome to the Swift playground."
        } catch {
            print("Error getting greeting: \(error)")
            return "\(name)! Error getting greeting."
        }
    }
}
