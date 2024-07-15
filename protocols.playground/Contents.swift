
import Foundation

//MARK: -> Syntax
///Protocols : Set of rules
protocol protocolName {
    //code
}
/* 
 { get } => Read only
    { get set} => read write
 */

//MARK: -> Example

protocol identifiable {
    var id: String { get}  ///get means we have to give an value
}

struct user: identifiable {
    var name: String
    var age: Int
    var id: String     ///If i don't add id then there will be an error (user does not conform to protocol
}

let user1 = user(name: "ritik", age: 23, id: NSUUID().uuidString)
let user2 = user(name: "ayush", age: 28, id: NSUUID().uuidString)

//MARK: -> shape example

protocol shape {
    var numberOfSide: Int {get}     ///You have to make it var for using get later on you can change it to let in struct
    var name: String { get }
    func getArea () -> Int
}

struct Rectangle: shape{
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

let rectangle = Rectangle(numberOfSide: 4, name: "Rectangle", width: 45, height: 30)
let squar = Squar(numberOfSide: 4, name: "Squar", sideLength: 89)

rectangle.getArea()

var shapes : [shape] = []

shapes.append(rectangle)
shapes.append(squar)

for i in shapes {
    print("shape name is \(i.name) and their area is \(i.getArea())")
}

///We can perform this in enums also
