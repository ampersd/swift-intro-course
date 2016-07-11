
// Свойства могут быть не только у экземпляров, но и в самих типах (структурах, перечислениях и классах)

struct SomeStructure {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty:Int {
        return 5 + 6
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value" // обязательно должно быть значение, т.к. тип в отличие от экземепляра не имеет инициализатора - т.е. он не создается и в нем нельзя задать эти свойства
    static var computedTypeProperty:Int {
        return 5 + 6
    }
}


class SomeClass {
    class var computedTypeProperty:Int {
        return 5 + 6
    }
}