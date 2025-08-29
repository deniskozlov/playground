import Testing
@testable import playground

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let greeter = PlayGreeter()
    let greeting = greeter.greet(name: "Till")
    #expect(greeting == "Hallo, Till! Welcome to the Swift playground.")
}
