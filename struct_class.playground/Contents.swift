//MARK: - struct (Value type) (immutable)

//ex1

struct Dev {                             //dev try to capatalise struct
    var name: String
    var job_title: String
    var sallary: Int
    }

var T09 = Dev(name: "ritik", job_title: "ios", sallary: 550)
print(T09.sallary)

//ex2

struct vehicle {
    var make: String
    var model: Int
    var hp : Int
    func getVInfo() {
        print("Made in year is \(make), model number is \(model) and the horse power of the vehicle is \(hp) ")
    }
    
}
var hondaCivic = vehicle(make:"this year", model: 112, hp: 500)
hondaCivic.getVInfo()



//MARK: - class (Refrence type)

class dev {
    var name: String
    var job_title: String
    var sallary: Int
    
//initializer (can use ‘?’ for initially nill )
    init (name: String, job_title: String, sallary: Int) {
    self.name = name
    self.job_title = job_title
    self.sallary = sallary
    }
}

let T04 = dev(name: "ritik", job_title: "ios dev", sallary: 500 )
print(T04.sallary)

//Inheritence

class ios_developer : dev{}      //inherite properties of dev class

