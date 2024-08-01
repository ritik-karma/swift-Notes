import Foundation

//MARK: - Codable
/*
 Used while working with api

 
 Encoder: converts user data into bytes
 Decodable: bytes -> user data
 */

protocol serializable: Codable {
    func serialise () -> Data?
}

extension serializable { ///using extention to give func work
    func serialise () -> Data? {
        
        let encoder = JSONEncoder() ///Used to convert into JSONFormat (bytes)
        return try?encoder.encode(self)
        /*
         try?: This keyword attempts to execute the encoding process. If it fails (e.g., if the object cannot be encoded), it returns nil instead of throwing an error.
         (try, try?, try!)
         */
    }
}


struct Language: serializable {
    var name: String
    var version: Int
}

var swift = Language(name: "Swift", version: 5)
var java = Language(name: "Java", version: 11)

let data = swift.serialise()
print(data as Any) ///converted to bytes


let decoder = JSONDecoder()


if let Decoding = try?decoder.decode(Language.self, from: data!){
    print(Decoding)
    print(Decoding.version )
}
///Can go for encoding without protocol also but then we can't do reusability so nt recommended for both



let encoder = JSONEncoder()
if let encoding = try?encoder.encode(swift){
    print(encoding)
    if let Decoding = try?decoder.decode(Language.self, from: encoding){
        print(Decoding)
    }

}

//MARK: Coding keys
///if server var naming is diffrent from your var then we use coding keys to help in that situation




