

// Все элементы массива должны быть одного типа
// если нам нужен неизменяемый массив, то помним про let

var list = ["a", "b", "c"]

list.count
list.isEmpty

list.append("d")
list += ["e"]
list += ["e","g","h"]

// получаем элементы массива по индексу
list[0]

// можем заменять элементы массива на серии
list[1...3] = ["f", "j", "x"]
list

// вставка нового элемента
list.insert("abc", atIndex: 4)
// то же самое в list.remove

// в цикле
for item in list { item }

// сейчас будет фокус
for (index,item) in list.enumerate() { index }
