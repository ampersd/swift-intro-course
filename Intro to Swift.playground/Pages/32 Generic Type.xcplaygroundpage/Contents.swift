

struct Stack<T> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("one")
stackOfStrings.push("two")
stackOfStrings.push("three")
stackOfStrings.pop()


// задаём тип, который должен адаптировать протокол Equatable
func findIndex<T:Equatable>(array:[T], valueToFind: T) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let doubleIndex = findIndex([3.14, 0.1, 0.25], valueToFind: 0.93)
let stringIndex = findIndex(["Do", "you", "wanna","play","?"], valueToFind: "play")
