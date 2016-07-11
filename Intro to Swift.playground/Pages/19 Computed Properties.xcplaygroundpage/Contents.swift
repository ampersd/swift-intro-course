
// вычислимые свойства
// иногда бывает, что свойство зависит от другого объекта, от каких-то других данных, обычно в таких случаях делают метод
// в Swift'e есть два типа свойств: stored properties и computed properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center:Point { // вычислимое свойство
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        set (newCenter) {
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
        
//        Можно так записать
//        set {
//            origin.x = newValue.x - size.width / 2
//            origin.y = newValue.y - size.height / 2
//        }
    }
}


var square = Rect(origin: Point(x: 0.0,y: 0.0), size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center
initialSquareCenter.x
initialSquareCenter.y
square.center = Point(x: 15.0, y: 15.0)
square.center.x
square.center.y


// свойство только для чтения - отличие от других языков, не нужно даже get писать
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let figure = Cuboid(width: 15.0, height: 16.0, depth: 12.0)
figure.volume
// мы не можем изменить объем напрямую, но можем поменять другие свойства, потому что он высчитывается через них
