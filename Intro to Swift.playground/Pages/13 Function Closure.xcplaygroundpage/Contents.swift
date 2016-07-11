
// есть массив имен и мы хотим отсортировать его в обратном алфавитном порядке
import Foundation

let names = ["Anna", "John", "Peter", "Gerald", "Sanders"]

func backwords(s1:String,s2:String) -> Bool {
    return s1 > s2
}

// sort(names, backwords) - не работает, хм...

// with closures, блок кода, имеющий доступ к контексту, в котором он был вызван

//var reversed = sort(names, { (s1:String, s2:String) -> Bool in return s1 > s2 } )
var reversed = names.sort({ (s1:String, s2:String) -> Bool in return s1 > s2 })
reversed

// sort и так ожидает такую функцию
reversed = names.sort({ s1, s2 in return s1 > s2 })

reversed = names.sort({ s1, s2 in s1 > s2 })

// в замыкании мы имеем быстрый доступ к параметрам

reversed = names.sort({ $0 > $1 })

// максимальное упрощение - вызов оператора > для строк
reversed = names.sort(>)


// trailing closure - выносим замыкание за скобки, но swift понимает, что это именно то замыкание, которое нужно использовать в сортировке
// reversed = sort(names) { $0 > $1 }
// короче похоже функцию sort([String], (String,String) -> Bool)  убрали, вместо неё для коллекций используем функцию [String].sort( (String,String) -> Bool)