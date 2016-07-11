
// Ветвление
var items = [1, 2, 3]

for item in items {
    // можем обращаться к каждому элементу внутри
}

// если мы не хотим в теле цикла обращаться к конкретному элементу, то можно записать так
for _ in items {
    
}

// в отличие от C (и C#) в Swift нет "проваливания" по кейсам вниз, т.е. не нужно в каждом case писать break;
// это "проваливание" можно включить командой fallthrough
switch "e" {
    case "f": fallthrough
    case "a", "d": "the letter is a or d or f"
    case "b": "the letter is b"
    default: "the letter is something else"
}

// можем использовать ranges
switch 2 {
    case 1...200: "<200"
    case 200...500: "200-500"
    default: "who knows"
}

// можем использовать кортежи (tuples)
// нижним подчеркиванием мы указываем на то, что первое значение нам не важно
let p = (2,2)
switch p {
case (_,0): "Something"
case (let x, 1): "These is \(x)" // можем использовать переменную из tuple внутри блока case, в то же время первое значение как и в первом условии нам не важно
case let (x,y) where x==y: "Values are equal" // можем добавлять условие
default: "Else"
}
