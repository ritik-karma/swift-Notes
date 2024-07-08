//func numWaterBottles(_ numBottles:  Int, _ numExchange: Int) -> Int {
//    var bottleDrinked = 0
//    var bottles = numBottles
//    bottleDrinked += bottles
//    
//    while bottles > 0 {
//        bottles = bottles / numExchange
//        bottles += bottles % numExchange
//        bottleDrinked += bottles
//    }
//    return bottleDrinked
//}
//
func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        var (refills, remainder) = (numBottles, 0)
        var bottlesDrunk = 0
        
        while refills > 0 {
            bottlesDrunk += refills
            (refills, remainder) = (refills+remainder).quotientAndRemainder(dividingBy: numExchange)
        }
        return bottlesDrunk
    }
