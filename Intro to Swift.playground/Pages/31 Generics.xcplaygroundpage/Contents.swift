

func swapTwoInts(inout a:Int, inout b:Int) {
    let temp = a
    a = b
    b = temp
}

func swapTwoValues<T>(inout a:T, inout _ b:T) {
    let temp = a
    a = b
    b = temp
}

var s1 = "Hello"
var s2 = "Bye"

swapTwoValues(&s1, &s2)

s1
s2
