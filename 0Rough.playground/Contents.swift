
func majorityElement(_ nums: [Int]) -> Int {
        var result = 0
    var maxCount = 0
    var countPairs: [Int:Int] = [:]
    
    
    //For mirroring dic with array . value as 0
    for i in nums {
        for (key,value) in countPairs{
            countPairs = [i:0]
        }
    }
    //Incrementing the count
        for i in nums {
            for (key, value) in countPairs{
                if key == i {
                    countPairs[value + 1]
                }
            }
        }

    //Finding the highest count
    for (key, value) in countPairs{
        if value > maxCount {
            maxCount = value
            result = key
        }
    }
    
        return result
    }
