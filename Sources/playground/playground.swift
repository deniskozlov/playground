public struct PlayGreeter {
    public func greet(name: String) {
        let locale = "de"
        do {
            let greeting = try Phrasebook.word(for: locale)
            print("\(greeting) \(name)! Welcome to the Swift playground.")
        } catch {
            print("Error getting greeting: \(error)")
            print("\(name)! Welcome to the Swift playground.")
        }
    }
}
