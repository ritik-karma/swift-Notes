func isPalindrome(_ x: Int) -> Bool {
    var y = String(x)
    var z = ""
    for char in y.reversed() {
        z.append(char)
    }
    if (y==z){
        return true
    } else {
        return false
    }
}
