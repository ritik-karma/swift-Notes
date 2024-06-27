/*For example
Excel is struct(change on shared excel sheet will not affect to another & main.)
googlesheet is classes (change on shared google sheet will not affect to another & main.)

*/
//MARK: - struct (Value type)

//ex1

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




//MARK: - class (Refrence type)

class dev {
    var name: String
    var job_title = "ios developer"
    var sallary: Int
    
//initializer (required) (can use ‘?’ for initially nill OR give Default value insted of self initialization but should be created as var not let to change further )
    init (name: String, sallary: Int) { //init(initialization) =  what should we take while declaring object
    self.name = name //self = while taking name refers to name of this class
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

