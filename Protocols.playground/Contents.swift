import Foundation


// protocols:  (set of rules) (used in both classes & structs)
/*
 Protocol extensions can be used to defining a function
 */
protocol protocolName {}
protocol carDetail {
    ///cannot use or define stored properties / func directly in protocols use { get } or { get set }
    var car: String {get}
    func carDetail()
}

struct CarDetails: carDetail, protocolName{
    func carDetail() {
        print("deatil of \(car)")
    }
    var car: String
}
var carObj = CarDetails(car: "hayabumbum")
carObj.carDetail()
carObj.car = "maruti" //can do set also

var vipCar: carDetail = CarDetails(car: "mercedes")///protocol applied here
//vipCar.car = "tata"    cannot assign get only property



protocol identifiable {
    var id: String { get}
}

struct users: identifiable {
    var name: String
    var age: Int
    var id: String
}

let user1 = users(name: "ritik", age: 23, id: NSUUID().uuidString)
let user2 = users(name: "ayush", age: 28, id: NSUUID().uuidString)

///Shape example: -
protocol shape {
    var numberOfSide: Int {get}     ///You have to make it var for using get later on you can change it to let in struct
    var name: String { get }
    func getArea () -> Int
}

struct Rectangle1: shape{
    let numberOfSide: Int
    var name: String
    let width: Int
    let height: Int
    func getArea() -> Int {
        return width * height
    }
}

struct Squar: shape{
    var numberOfSide: Int
    var name: String
    let sideLength: Int
    func getArea() -> Int {
        return sideLength * sideLength
    }
}

let rectangle = Rectangle1(numberOfSide: 4, name: "Rectangle", width: 45, height: 30)
let squar = Squar(numberOfSide: 4, name: "Squar", sideLength: 89)

rectangle.getArea()

var shapes : [shape] = []

shapes.append(rectangle)
shapes.append(squar)

for i in shapes {
    print("shape name is \(i.name) and their area is \(i.getArea())")
}


class ok: protocolName{
 
}

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

