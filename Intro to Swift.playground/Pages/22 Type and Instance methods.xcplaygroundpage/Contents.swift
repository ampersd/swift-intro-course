
// описываем методы
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(amount:Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment()
counter.increment(12)
counter.increment()
counter.count
counter.reset()

// Swift позволяет задавать методы подобно тому как это было в ObjC
class BetterCounter {
    var count = 0
    func incrementBy(amount:Int, numberOfTimes:Int) { // имя первого параметра используется только внутри, второй и последующий параметры используются также и снаружи
        count += amount * numberOfTimes
    }
}

let counter2 = BetterCounter()
counter2.incrementBy(2, numberOfTimes: 13)


// методы могут относиться к типам напрямую
struct SomeStruct {
    static func someTypeMethod() {
        
    }
}

SomeStruct.someTypeMethod()

class SomeClass {
    class func someTypeMethod() {
        
    }
}

SomeClass.someTypeMethod()
