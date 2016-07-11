

// можем добавить к вариантам перечисления сырые данные или значения по-умолчанию
// они задаются один раз, при описании и не меняются
enum ASCIIControlCharacter:Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

// если используем целочисленное значение, то Swift автоматически добавить числа ко всем последующим элементам
// т.е. 2 - для Венеры, 3 - для Земли и т.д.
enum Planet:Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

let e = Planet.Earth.rawValue

let possiblePlanet = Planet.init(rawValue: 5) // return Planet? - nil если такого элемента не существует

// в ObjC nil указывает на несуществующий объект, в Swift nil ни на что не указывает - это отсутствие указателя

let poss = Planet.init(rawValue: 10)


