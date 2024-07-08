/*
 
For example :- Excel is struct(change on shared excel sheet will not affect to another & main.) & Googlesheet is classes (change on shared google sheet will not affect to another & main.)
 
 init =  The init method is used to initialize an instance of a structure or class, setting up its initial state by assigning values to its properties.
  
*/

//MARK: - struct (Value type)
/*
 
 ● Aggregate multiple value & func into a single value.
 ● light weight & easy to use.
 
 'init' in struct = Swift automatically provides a memberwise initializer if you don't define any initializers. (But You can define a custom init method to set up properties with specific values or perform additional setup. but no sense of  using cutom init)
 
 */

struct student {
    //It holds member variables & member func's
    var name: String
    var surname = "karma"   //Given an initial value which is nt mandatory
    lazy var species = "human"

    static var id = 10 // 'Static' means It is shared among all instances of the structure. There is only one copy of this variable, regardless of how many instances of the structure are created.Static variables are accessed and modified through the structure itself, not through instances.
    
    
    
    //Static func only accept static var
    func students () {
        print("Student names \(name)")
    }
    
    //mutating func can be used to change struct var values
    mutating func fullName () {
        name = surname
        print("My name is changed to \(name)")
    }
}

let y = student(name: "ritik", surname: "karma")
var x = student(name: "swift")
x.students()
x.name
x.fullName()
//error  y.id
student.id

struct user {
    
    let userName: String
    var invisible = true
    var freinds: [String] = []
}

var alice = user(userName: "alice")
alice.freinds = ["mohit"]

var bruno = user(userName: "bruno")
bruno.freinds = alice.freinds

alice.freinds.append("ritik")

alice.freinds
bruno.freinds





struct vehicle {
    var make: String
    var model: Int
    var hp : Int
    func getVInfo() {
        print("Made in year is \(make), model number is \(model) and the horse power of the vehicle is \(hp) ")
    }
    //not required initializer
}
var hondaCivic = vehicle(make:"this year", model: 112, hp: 500)
//hondacivic will known as object same as in class

hondaCivic.getVInfo()

//Shown below how it is value type.
var hondaCar = hondaCivic
hondaCar.hp = 1000
hondaCivic.hp       //changing hp of hondaCar will not affect to hp of hondacivic



//MARK: Computed properties
//Computed properties in Swift are properties that do not store a value directly. Instead, they provide a getter and optionally a setter to retrieve and set other properties or perform calculations.
struct Rectangle {
    var width: Double
    var height: Double
    
    // Computed property
    var area: Double {
        return width * height
    }
    
    // Computed property with a setter
    var perimeter: Double {
        get {
            return 2 * (width + height)
        }
        set(newPerimeter) {
            let ratio = width / height
            height = newPerimeter / (2 * (1 + ratio))
            width = height * ratio
        }
    }
}

var rect = Rectangle(width: 10, height: 5)
print(rect.area)          // Outputs: 50.0
print(rect.perimeter)     // Outputs: 30.0

rect.perimeter = 40
print(rect.width)         // Outputs: 12.5
print(rect.height)        // Outputs: 6.25


//MARK: use of init in struct
struct Rectangle2 {
    var width: Double
    var height: Double
    var area: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        self.area = width * height
    }
}

let rect2 = Rectangle2(width: 5, height: 10)
print(rect.area)  // Outputs: 50.0


//MARK: lazy
//used for first time use var
//A lazy var in Swift is a property that is not initialized until it is accessed for the first time. This is useful for properties that are computationally expensive to create or are not always needed.
struct DataLoader {
    var fileName: String
    
    // Lazy property with closure
    lazy var fileContents: String = {
        // Simulate a time-consuming operation
        print("Loading file...")
        return "Contents of \(fileName)"
    }()
}

var loader = DataLoader(fileName: "example.txt")
print("DataLoader initialized.")

print(loader.fileContents)
// Accessing again does not print "Loading file..." since it's already initialized
print(loader.fileContents)


//MARK: Property Observers (didset willset)
//oldvalue is predefined

var a: Int

a = 10
a = 100

// willset 10     (remember only old value)
//didset  10 100 (remember both old & new value)

struct Progress {
    var task: String
    var pay:Int{
        didSet{
            print("my \(task) amount is before \(oldValue) and current is \(pay)")
        }
        willSet{ //it trigger first
            print("my \(task) amount before is \(pay)")
        }
    }
}
var progres1 = Progress(task: "code", pay: 500)
progres1.pay
progres1.pay = 1000  //Output: my code amount is 500 /n my code amount is before 500 and current is 1000
 


//MARK: - class (Refrence type)
/*
 'init' in classes = Classes do not get a memberwise initializer by default.You must define an init method to set up properties and call super.init() if the class inherits from another class.
For init we can use ‘?’ for initially nill OR give Default value insted of self initialization but should be created as var not let to change further.
*/

class dev {
    var name: String
    var job_title = "ios developer"
    var sallary: Int
    
    init (name: String, sallary: Int) { //init =  what should we take while declaring object
    self.name = name //self = Refer within this class (not outside name)
    self.sallary = sallary
    }
}

let T04 = dev(name: "ritik", sallary: 500 )
T04.job_title
T04.job_title = "ios"
T04.job_title

//Shown below how it is refrence type.
let mySalary = T04
mySalary.sallary = 1000
T04.sallary               //Change in my salary will affect t04 salary also

//MARK: Inheritence (Only available in classes)
class ios_developer : dev{ //inherite properties of dev class
    var uiFramework: String
    init(name: String,  sallary: Int,  uiFramework: String) {
        self.uiFramework = uiFramework
        super.init(name: name,  sallary: sallary)
        //Again init and super.init is required while inheriting properties of parent class
    }
}


var ritik = ios_developer(name: "Ritik",  sallary: 1000000, uiFramework: "SwiftUi")
T04.job_title
T04.job_title = "kjklj"
T04.job_title

