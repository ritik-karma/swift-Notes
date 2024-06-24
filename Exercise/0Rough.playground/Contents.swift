///

func gradingStudents(grades: [Int]) -> [Int] {
    var result: [Int] = []
    for i in 1...grades.count {
        var x = grades[i]
        if x > 38 {
            var z = (((x/5)+1)*5)
            if (z-x) < 3 {
                result.append(z)
            } else {
                result.append(x)
            }
        } else {
            result.append(x)
        }
    }
    
    return result
}

var a = [4,13,39,45,42]
gradingStudents(grades: a)
