var age :[Int] = []

/* Optional values allow to code more safely when working with properties that may or may not have a value
 
 '?' is used to denote that the property is optional (can leave it blank also) like below ex: */

var bio: String?     //Not recomended because it stats dirty optional keyword

//MARK: - optional binding 'if let'
///Can use read
if let old = age.last {
    print("oldest age is \(old)")
}
else {
    print("there is no old age")
}
/// can also take input in integer

/// Problem: Want to check given user element contains in that array  or not don't use functions of array'

var userName = ["ritik", "ayush", "sonu", "mohit", "roshni", "ayush"]
var count = 0
if let userE = readLine() {
    for i in userName {
        if i == userE {
           count += 1
        }
    }
    if count >= 1 {
        print("User input '\(userE)' is  available in array")
    } else {
         print("User input '\(userE)' is not available in array")
    }
}

//MARK: - nil coalescing '??'

var old = age.last ?? 100      //100 is a default
old
let userInput = readLine() ?? "empty"   // space is compulsary brfore ??
userInput

//

let l = Int(readLine() ?? "") ?? 0   // Only can give default value Int while convertion
let w = Int(readLine() ?? "") ?? 0
let area = l * w
print(area)

//MARK: - guard (like a wall in func)

func oldage () {
    guard var old = age.last else {return} // return will exit func if nil
    }


//MARK: - Force unwrap (Generally not recommended by dev)

if bio != nil {
    print(bio!)  //'!' is used to force unwwrap
}

