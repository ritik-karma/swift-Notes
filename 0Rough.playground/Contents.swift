func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var counts = 0
    for i in 0..<nums.count {
            if val == nums[i] {
                nums.remove(at: i)
            }
        }
    counts = nums.count
    return counts
    }

var nums = [1,2,3,4,5]
removeElement(&nums, 5)
nums
