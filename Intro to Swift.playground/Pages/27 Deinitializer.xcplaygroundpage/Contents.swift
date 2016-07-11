

struct Bank {
    static var coinsInBank = 10_000
    
    static func vendCoins(numberOfCoinsToVend: Int) -> Int {
        let number = min(numberOfCoinsToVend, coinsInBank)
        coinsInBank -= number
        return number
    }
    
    static func receiveCoins(coins:Int){
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.vendCoins(coins)
    }
    func winCoins(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    // вот он
    deinit {
        Bank.receiveCoins(coinsInPurse)
    }
}

var playerWinstonSmith:Player? = Player(coins: 10)
playerWinstonSmith!.winCoins(190)
print(Bank.coinsInBank) // 9800
playerWinstonSmith = nil
print(Bank.coinsInBank) // 10000