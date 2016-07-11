
// Структуры - это так называемые Value Types, это означает что экземпляры структур копируются при передаче их в качестве параметра функции или приравнивании к переменной или константе

struct Resolution {
    var width = 0
    var height = 0
}

var hd = Resolution(width: 1920, height: 1080)
var cinema = hd // cinema - копия объекта hd
cinema.width = 2048
cinema.width
hd.width


// Классы - Reference Types
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
tenEighty.frameRate
