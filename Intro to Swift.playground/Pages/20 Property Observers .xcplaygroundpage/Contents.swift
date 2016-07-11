
// willSet и didSet - два метода для реализации механизма наблюдателя за свойствами
// willSet будет вызван сразу перед тем, как свойство изменяется
// didSet - после того, как значение поменялось. В нем доступно старое значение через переменную oldValue

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set new totalSteps to \(newTotalSteps)")
        }
        
        didSet { // тут мы могли бы и дать свое значение для totalSteps, но тогда то значение, которое передается при присваивании будет утеряно
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 360