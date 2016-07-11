
/* протоколы как типы
- можно использовать как тип параметра в функции, методе или инициализаторе
- как тип константы, переменной или свойства
- как тип элементов массива, словаря или другого хранилища
*/

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
    static var someTypeProperty: Int { get }
}

protocol FullyNamed {
    var fullName: String { get }
}

// Person conforms FullyNamed protocol
struct Person: FullyNamed {
    var fullName: String
}



// говорим что в протоколе нужен метод
protocol RandomNumberGenerator {
    func random() -> Double
}

// мутирующий метод
protocol Toggable {
    mutating func toggle()
}


// протоколы - это типы, их можно передавать другим элементам
class Dice { // класс, описывающий кубик
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides:Int, generator:RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

// реализовали класс, адаптирующий протокол
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 12356.0
    let a = 3877.0
    let c = 2889.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
d6.roll()
d6.roll()
d6.roll()
d6.roll()




