import Foundation

protocol serializable:Codable{
    func serialise() -> Data?
}
struct Language {
    var name: String
    var version: Double
}
let swift = Language(name: "swift", version: 5.10)
let c = Language(name: "c", version: 9)
let python = Language(name: "python", version: 11)
