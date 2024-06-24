/*
public func: Visible to any code that imports the module where the function is defined. Use it to expose functions outside the module.
func (implicitly internal): Visible only within the module where it is defined. Use it for internal module functions.

 If you wrote private before func it means it will be private for only that class.

*/
//MARK: -
func PrintName() {
    print("Ayush")
}
PrintName()

 

///Default I/P parameter is let (constant)
func Sum(a: Int, b: Int) ->Int {             //Sum(input parameter) -> return type
    return a + b                               //must include return if we use return type
}
var y = 5
print(Sum(a:6,b:y))

//MARK: for not iterating in first index
//for i in 1..<grades.count


//MARK: I/P parameter name which can use Outside
func number(intNum a: Int){
    print("number is \(a)")
}
print(number(intNum:10))


//MARK: Without I/P parameter name & Default value
func kj(_ no: String, name:String = "ayush", home:Bool = true) {
    if home {
        print(no+name)
    } else {
        print("\(no) \(name) is at work")
    }
}
print(kj("ok"))
print(kj("ok", name: "ritik", home: false))


//MARK: no limit
func variadic(num: Int...){
    print(num)
}
//Same can do by (num: [Int])
variadic(num: 1,2,3,4,4)


//MARK: taking tuple as I/P parameter
func tupleFunc(num: (Int, Int, String)){
    print(num)
}
tupleFunc(num: (1, 34, "aoo"))


//MARK: - inout
/*
- With this we can use predeclared var & make I/P parameter var (muatable)
- it always use with '&' while calling func
 */
var number = 10
func nuc (number:inout Int) {
    number+=10
    print(number)
}
nuc(number: &number)       ///'&___''work with address not values


//MARK: - defer
///defer code will execute at end of the function
func deferFunc () {
    print("Beginning")
    var name: String
    defer{
        print("\(name) defer.. code")
    }
    name = "defer"
    print("ending")
}
deferFunc()


//MARK: - overloading
///Can create diff func with same name
func overloading (o: String) {
    print("o")
}
func overloading (m: String) {
    print("o")
}
///if I\P parameter variable will also be same then it will be 'function overriding' which only can be done in inheritence classes

  
//MARK: -> Generic Function
///Can accept any dataType as an I/P parameter (can also used in classes.
///Can use multiple generics also.
func geneFunc<T>(m:T, n: T, o: String = "gen") {  //Instead of 'T' can use any string
    print(m)
}
/// I/P dataType should be same for all Generic parameters while calling an func
geneFunc(m: "ok", n: "78")
geneFunc(m: 5, n: 34, o: "default")
geneFunc(m: 5.5944, n: 1.0000)
geneFunc(m: true, n: false)


//MARK: - Closures

 
/// Similar to func but without func name
/// Basic syntax is
 do {
}


///So we can use anywhere we can do
let num = {
    print("This is closure")
}
num()


///same liike func we take I/P in closures also
let person = {
    (name: String, num: Int) in        ///'in' is diffrence b\w I\P parametre & code
    print("Person name is  \(name) & num is \(num)")
}
person("okinawa", 422) ///But unlike func nt required I\P parametre variable name while calling closure


let id = {
    (id: String) -> String in
    return "this is return \(id)"
}
id("chal")
 
