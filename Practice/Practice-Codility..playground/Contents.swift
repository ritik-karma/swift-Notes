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




