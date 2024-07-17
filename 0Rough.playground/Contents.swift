
func majorityElement(_ nums: [Int]) -> Int {
        var result = 0
        
        for i in nums {
            if i >= result {
                result = i
            }
        }

        return result
    }
