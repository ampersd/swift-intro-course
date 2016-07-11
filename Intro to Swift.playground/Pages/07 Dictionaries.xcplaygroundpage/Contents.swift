

var airports:Dictionary<String, String> = ["TYO":"Tokyo", "DUB":"Dublin"]

// можно было в случае выше явно не говорить swift'у, что мы используем словарь, он это и так бы понял по инциализации - ключ-значение

airports.count

// добавляем значение
airports["LHR"] = "London"

// обновить значение, метод при этом возвращает старое значение, и мы можем его для чего-то использовать
airports.updateValue("Dublin Intl", forKey: "DUB")

// можем удалить существующую пару, если знаем ключ
airports["DUB"] = nil

// или
airports.removeValueForKey("DUB")

// можем с циклом так делать
for (code,name) in airports {
    
}

for code in airports.keys {
    
}

for name in airports.values {
    
}

// можно создавать массивы из коллекций ключей или значений
let codes = Array(airports.keys)
