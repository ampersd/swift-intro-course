
// Optionals
// Int? - optional integer, получаем объект-обёртку {Some 123}
// используя восклицательный знак "!" мы приводим к базовому типу

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

// можем использовать Optionals в условиях, можем задавать значение какой-то переменной из Optional если он возвращает нам какое-то значение, а не nil


