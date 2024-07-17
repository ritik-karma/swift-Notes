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
    //if age.last is empty come here. else is not mandat to use
    print("there is no old age")
}

//MARK: - guard (like a wall in func)

func oldage () {
    guard var old = age.last else {return} // return will exit func if nil
    }
///else is compulsary in guard its only diff bw if let & guard let
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




//MARK: - Force unwrap (Generally not recommended by dev)

if bio != nil {
    print(bio!)  //'!' is used to force unwwrap
}

