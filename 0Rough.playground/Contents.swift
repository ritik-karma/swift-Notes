func majorityElement(_ nums: [Int]) -> Int {
       var result = 0
    var maxCount: [Int:Int] = [:]
    for arrayValue in nums {
        for (key, value) in maxCount{
            if (arrayValue != key) {
                maxCount[key] = 1
            } else {
                maxCount[key] = value + 1
            }
        }
        
    }

        return result
    }


var nums = [1,2,3,3,3,5]
var maxCount: [Int:Int] = [:]
for arrayValue in nums {
    for (key, value) in maxCount{
        if (arrayValue != key) {
            maxCount[key] = 1
        } else {
            maxCount[key] = value + 1
        }
    }
    
}

maxCount
