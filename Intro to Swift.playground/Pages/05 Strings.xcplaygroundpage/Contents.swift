
"\u{24}"// однобайтный Unicode  не работает
"\u{2665}" // двухбайтный Unicode  
"\u{0001F496}" // четырехбайтный Unicode

// В ObjC есть NSString и NSMutableString, в Swift есть только string, но можно добиться того же эффекта с помощью let или var

// при передаче в функцию умный оптимизатор свифта может копировать, а может и не копировать значение

// в цикле можно обращаться к отдельным знакам в строке
for c in "DANCE".characters {
    c
}

// Количество знаков в строке
"DFDSFFD".characters.count

// интерполяция - операции внутри строк
// возведение в степень таким образом почему-то не работает
"it is \(123 + 12^2)"

// сравнение строк по содержанию
"abc" == "abc"

// проверяем части строки: с начала - hasPrefix, с конца - hasSuffix

"Today is a good day.".hasPrefix("Today")
"Today is a good day.".hasPrefix("Work")
"Today is a good day.".hasSuffix("day.")

// uppercaseString, lowercaseString - возвращают новые строки

"sdfsff".uppercaseString


