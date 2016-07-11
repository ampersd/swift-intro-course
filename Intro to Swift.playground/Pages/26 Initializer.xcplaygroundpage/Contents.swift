

// когда создаём экземпляр какого-то класса, то должны задать значения всем свойствам этого класса, если только это не Optional свойтсва
// в инициализаторе нужно задавать значения всем обязательным свойствам
class Celcius {
    var temperatureInCelcius:Double = 0.0
    
    init(fromFahrenheit fahrenheit:Double) {
        temperatureInCelcius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin:Double) {
        temperatureInCelcius = kelvin - 273.15
    }
}

let boilingPointWater = Celcius(fromFahrenheit: 212.0)
let freezingPointWater = Celcius(fromKelvin: 273.15)




struct Color {
    var red = 0.0, green = 0.0, blue = 0.0
    let alpha: Double?
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        alpha = nil
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
// в инициализатор структуры обязательно нужно передавать имена параметров как в примере выше
// let wrong = Color(1.0,2.0,3.0)


// default initializer вызовется, если мы сами его не задали явно. Все значения инициализируются, optional - значениями nil (у нас это name)
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()
item.name


// memberwise initializer for structs - можно передавать свойства по именам в инициализатор по-умолчанию для струкур
struct Size {
    var width = 0.0, height = 0.0
}

let twoByTwo = Size(width: 2.0, height: 2.0)






