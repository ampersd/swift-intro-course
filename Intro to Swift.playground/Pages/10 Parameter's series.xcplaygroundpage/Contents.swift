

// если хотим передавать разное количество параметров
func average(numbers:Double...) -> Double {
    var total:Double = 0
    for number in numbers { total += number }
    
    return total / Double(numbers.count)
}

average(0)
average(1,2,3,4)
average(2,5,6,7,4,5,6,7)
