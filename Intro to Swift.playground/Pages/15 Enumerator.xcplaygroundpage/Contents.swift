
// перечисление

enum CompassPoint {
    case North
    case South
    case West
    case East
}

// можем прямо через точку указать новое значение и Swift поймет, что мы работаем в том же Перечислении
var direction = CompassPoint.North
direction = .East


// к каждому варианту хотим прицепить доп. данные
enum Barcode {
    case UPCA (Int, Int, Int) // если выбрали такой вариант, то к нему нужно привязать три числа
    case QRCode (String) // если этот вариант - нужно привязать строку
}

var productBarcode = Barcode.UPCA(12, 14, 15)
productBarcode = .QRCode("DSDFGG")
