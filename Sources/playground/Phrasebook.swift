import Foundation

public enum Phrasebook {
    enum LoadError: Error {
        case fileNotFound
    }

    public static func word(for locale: String) throws -> String {
        let bundle = Bundle.main
        guard let url = bundle.url(forResource: "phrases", withExtension: "json") else {
            throw LoadError.fileNotFound
        }
        let data = try Data(contentsOf: url)
        let phrases = try JSONDecoder().decode([String: String].self, from: data)
        let phrase = phrases[locale]
        return phrase ?? phrases["default"] ?? "Hello"
    }
}