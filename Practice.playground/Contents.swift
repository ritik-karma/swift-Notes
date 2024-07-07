func numWaterBottles(_ numBottles:  Int, _ numExchange: Int) -> Int {
    var bottleDrinked = 0
    var bottles = numBottles
    bottleDrinked += bottles
    
    while bottles > 0 {
        bottles = bottles / numExchange
        bottles += bottles % numExchange
        bottleDrinked += bottles
    }
    return bottleDrinked
}

