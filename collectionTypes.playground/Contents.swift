//MARK: - array (ordered - same type)

var item = ["ritik",  "karma"]
var clas = ["a", "b", "c"]
var num = [1,2,3,0,0]

var agee: [Int]                  ///Declared but not initialized
var age: [Int] = []
      //or                      //creates an empty Int array declared & Initialized
var aage = [Int]()

age += [45,66,34]                  //adding values in array

// insertion in array

item.append("ayush")                    //Add in array (let can't add)
item.append(contentsOf: ["q","r","p"])  //for adding multiple elements
item.append(contentsOf: clas)           // also insert another array
item.insert("ay", at: 0)                 // inert at 0 index and shift the array
item.isEmpty
item.count                          // counts item in array
item.max()                          /// Returns maximum value in array
item.first  //.last                // first or last item in array
item.reverse()                     // reverse the order
//item.contains(where: ...)
item.sort()                        // increasing order
item.sort(by: >)                   // decreasing order
item.swapAt(0, 3)                  /// swapping value of indexes
item.shuffle()                     // random orders
item.contains("ayush")             //it return true or false
item.remove(at: 1)                 //Remove from index 1
item.removeFirst()                 //remove from first
item.removeLast()                  // remove last item
item.count                        // no of elements in a array
num.removeAll { $0 == 0 }        ///Used when a specific condition met remove that in which it is 0

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]        //Array slicing

// Slice from index 2 to index 5 (inclusive)
let slice = array[2...5]
print(slice) // Output: [3, 4, 5, 6]



//MARK: - Set  (unordered - no duplicates)
/* Better performance then array */

var ok: Set<Int> = []       // Created an empty Set

var ages = Set(age)         // copy from an array

ok.insert(101)              //insert is used instead of append
ok.insert(101).inserted     /// .inserted return bool value as 101 is already ther it will return false

//MARK: - Dictionary [Key : value]
/*(Better look-up then array beca.. constant time lookup)*/

let devices: [Int: String] = [:]       //Empty Dictionary (Can use any Data type) or automatically swift will select after filling

var fruit = [1 : "",2: "banana"]
print(fruit[1] ?? "key nt found")                  //it is not nil it having space string
fruit[1] = "l"                                    //update 1 : "l"
print(fruit[1])                         //use default value (optional) to avoid warining
fruit[4]="kela"
print(fruit[1]!)         ///for printing perticular values ! is used in dictionary
var countries = ["china", "england", "japan"]

var listCont = ["contries": countries]  ///Storing array as values
print(listCont)

for (key,value) in listCont {
    print("key is \(key) and value are \(value). ")
}


//MARK: - Tuple (Ordered - Store Diff dataType as a Subsets (GroupOfElement, Array, Dictonary) - fixed size)

var emptyTuple: (Int,String,Double)
emptyTuple = (1, "hello", 3.14) ///Once a tuple is created and given values, you cannot directly add or remove elements from it because tuples in Swift are immutable


var product  = ("Macbook", 12000)
print(product.1)

var proDetail = (1, name: "mac", price: 1200)
print(proDetail.1)
///or
print(proDetail.name)
proDetail.1 = "iphone"
print(proDetail.name)

var numb = (1,2,3,(4,5,6),"name",[1,2,"ok"],(name: "ayush", id: 5))
print(numb.3)
print(numb.3.1)
print(numb.5[2])
//change values
numb.6.name = "ritik"






