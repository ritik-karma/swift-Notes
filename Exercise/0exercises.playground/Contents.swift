//MARK: - Problem i have array of username which having  duplicate values also  just print only unique value from that array don't use set '

var userName = ["ritik", "ayush", "sonu", "mohit", "roshni", "ayush"]

func uniqueUN (a: [String]) -> [String] {
    var x: [String]  = []
    for i in a {
        if x.contains(i) == false {
            x.append(i)
        }
    }
   return x
}
uniqueUN(a: userName)

//MARK: Without . contains

func uUN(a: [String]) -> [String] {
  var seen = Set<String>()  // Create an empty set to store seen elements
  var uniqueElements: [String] = []  // Create an empty array for unique elements

  for element in a {
    if seen.insert(element).inserted {  // Insert element into set and check if new
      uniqueElements.append(element)
    }
  }

  return uniqueElements
}
uUN(a: userName)


//MARK: - Problem: Want to check given user element contains in that array  or not don't use functions of array'

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

//MARK: - Sum of all input only even numbers

func evenSum(numArray: [Int]) -> Int {
    var sum = 0
    for i in numArray {
        if i%2 == 0 {
            sum += i
        }
    }
    return sum
}
evenSum(numArray: [1,2,3,4,5])








