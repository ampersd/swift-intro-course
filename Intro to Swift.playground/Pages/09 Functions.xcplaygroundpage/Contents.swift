
// имя функции (параметры) -> возвращаемый тип
func hi(name:String) -> String {
    return "Hi " + name;
}

hi("Alex")


// можем возвращать несколько значений в виде tuple
// можно передавать параметрам значения по-умолчанию
func hi2(name:String="John") -> (word:String,name:String) {
    return ("Hi ", name);
}

hi2("Alex")
hi2()

// можем дать параметру внешнее название
// name - внутреннее название
// extName - уже внешнее название, которое можно использовать при вызове функции
func hi3(extName name:String) -> (word:String,name:String) {
    return ("Hi ", name);
}

hi3(extName: "Alex")

