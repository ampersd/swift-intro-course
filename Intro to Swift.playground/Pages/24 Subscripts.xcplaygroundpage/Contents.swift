

// сабскрипты - это методы для быстрого доступа к какой-нибудь коллекции вроде массива или словаря
// синтаксис сабскрипта напоминает запись метода или вычислимого свойства
// можем использовать любое количество параметров, но не можем использовать inout параметры и задавать значение по умолчанию

struct SomeStruct {
    subscript(index:Int) -> String {
        get { return "Return Something" }
        set (newValue) { "Set Something" }
    }
}

// если нам нужен только геттер
struct TimesTable {
    let multiplier: Int
    subscript(index:Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
threeTimesTable[123]


// словарь использует сабскрипт для того, чтобы получать доступ к элементам
var numberOfLegs = ["spider":8, "ant":6, "cat":4]
numberOfLegs["birds"] = 2
numberOfLegs["birds"]


struct Matrix {
    let rows: Int, columns: Int
    var grid:[Double] // array of doubles
    
    // инициализатор, он же - конструктор
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    func indexIsValidForRow(row:Int, column:Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    // сабскрипт для того, чтобы получить или задать элемент матрицы
    subscript (row:Int, column:Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            return grid[(row * column) + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[(row * column) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0,1] = 15.0
matrix[1,0] = 3.2




