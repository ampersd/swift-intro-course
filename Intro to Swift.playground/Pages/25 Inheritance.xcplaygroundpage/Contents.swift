
// если хотим защитить какое-то место от перезаписи - нужно добавить ключевое слово final перед свойством или методом
// если хотим весь класс защитить от перезаписи - добавляем final прямо перед именем класса
class Vehicle {
    var numberOfWheels: Int
    var maxPassengers: Int
    var speed: Double
    
    func description() -> String {
        return "\(numberOfWheels) wheels; up to \(maxPassengers) passengers"
    }
    
    init() {
        numberOfWheels = 0
        maxPassengers = 1
        speed = 20
    }
}


class Bicycle: Vehicle {
    override var speed: Double {
        get {
            return super.speed
        }
        set {
            super.speed = min(newValue, 50.0)
        }
    }
    override init() {
        super.init()
        numberOfWheels = 2
    }
    // override обязаны указать
    override func description() -> String {
        return super.description() + ";" + "and it's a bycicle!"
    }
}
