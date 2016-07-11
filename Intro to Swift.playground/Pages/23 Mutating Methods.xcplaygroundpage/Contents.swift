
// мутирующий метод может поменять содержимое структуры
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX:Double, y deltaY:Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x:1.0, y:1.0)
somePoint.moveByX(2.0, y: 3.0)
somePoint.x
somePoint.y

let fixedPoint = Point(x: 1.0, y: 1.0)

// в мутирующем методе можно полностью заменить экземпляр
struct Point2 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX:Double, y deltaY:Double) {
        self = Point2(x: 10.0 + deltaX, y: 15.0 + deltaY)
    }
}