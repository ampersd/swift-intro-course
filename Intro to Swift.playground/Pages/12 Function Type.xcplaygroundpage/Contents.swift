

// (Int, Int) -> Int

func addTwoInts(a:Int,b:Int) -> Int {
    return a+b
}

// mathFunc - переменная, тип которой соответствует функции, которая принимает два параметра и возвращает Int
var mathFunc:(Int,Int) -> Int = addTwoInts

mathFunc(12,13)


// function type as argument type - функцию можно передавать другой функции в качестве параметра
func overMathFunction(aFunction: (Int,Int) -> Int) -> Int {
    return aFunction(44,15)
}

overMathFunction(addTwoInts)
