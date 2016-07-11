

/* классы и структуры
 - свойства
 - методы
 - сабскрипты
 - инициализаторы
 - расширения
 - адаптация протоколов
 
 классы в дополнение к этому
 - наследование
 - тайп-кастинг
 - деинициализаторы
 - reference counting
 */


struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

someResolution.width
someVideoMode.resolution.width

someVideoMode.resolution.height = 1280
someVideoMode.resolution.height

// в отличие от классов, у структур есть автоматический инициализатор и его можно использовать для задания свойств
let vga = Resolution(width: 640, height: 480)
