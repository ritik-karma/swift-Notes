//MARK: -> There are two-letter strings, "AA", "AB" and "BB", which appear AA, AB and BB times respectively. The task is to join some of these strings to create the longest possible string which does not contain "AAA" or "BBB"


import Foundation

func solution(_ AA: Int, _ AB: Int, _ BB: Int) -> String {
    var ans = ""
    var aa = AA
    var ab = AB
    var bb = BB

    while aa > 0 || ab > 0 || bb > 0 {
        if ans.last != "A" && aa > 0{
            ans.append("AA")
            aa -= 1
        } else if ans.last != "A" && ab > 0 {
            ans.append("AB")
            ab -= 1
        } else if ans.last != "B" && bb > 0 {
            ans.append("BB")
            bb -= 1
        } else {
            break
        }
    }
    return ans
}
solution(5, 0, 2)



//MARK: -> Codility prob 2

///Q: You are given an array A consisting of N numbers. In one move you can delete either the first two, the last two, or the first and last elements of A. No move can be performed if the length of A is smaller than 2. The result of each move is the sum of the deleted



//Delete either first2, last2 & first+last 2 elements = sum should be equal only then result += 1

//
//
//
//func sol(_ A: [Int]) -> Int {
//    if A.count < 2 {
//
//        if A.first + A[1] ==
//
//
//    } else {
//        print("Give array more then 2!")
//    }
//
//    return 0
//}
