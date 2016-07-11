

// makeIncrementor возвращает функцию

func makeIncrementor(forIncrement amount:Int) -> () -> Int {
    
    var runningTotal = 0
    
    func incrementor() -> Int {
        runningTotal += amount // runningTotal is a reference, amount is a copy
        return runningTotal
    }
    
    return incrementor
}

var incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

var incrementByEleven = makeIncrementor(forIncrement: 11)
incrementByEleven()
incrementByEleven()
incrementByEleven()

var alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
