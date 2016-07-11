
// то же, что и методы расширения в C#

/* расширения (extensions)
- могут добавлять вычислимые (computed) свойства и вычислимые статические свойства
- методы экземпляра и типа
- новые инициализаторы
- сабскрипты
- вложенные типы
                    
- заставить тип адаптировать протокол
- не могут добавлять хранимые (stored) свойства
- не могут добавить наблюдателей (property observers) за существующими свойствами
*/


extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
}

25.4.cm
41.2.km


struct SomeStruct {
    var SomeProp = 1.0
}

extension SomeStruct {
    init(prop:Double) {
        let newProp = prop + 42
        self.init(SomeProp: newProp)
    }
}

var a = SomeStruct(prop: 0)
a.SomeProp
