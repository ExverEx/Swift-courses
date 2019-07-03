import UIKit

/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 
 6. Вывести значения свойств экземпляров в консоль.
*/
enum color: String {
    case red = "красный"
    case blue = "синий"
    case white = "белый"
    case gray = "серый"
}

enum marks: String {
    case kia = "КИА"
    case honda = "Хонда"
    case bmw = "БМВ"
    case zil = "ЗИЛ"
}

enum lights: String {
    case on = "фары включены"
    case off = "фары выключены"
}

class Car {
    let color: color
    let maxSpeed: Int
    let secondsTo100: Int
    let doorsCount: Int
    let mark: marks
    var lights: lights
    
    init(color: color, maxSpeed: Int, secondsTo100: Int, doorsCount: Int, mark: marks, lights: lights) {
        self.color = color
        self.maxSpeed = maxSpeed
        self.secondsTo100 = secondsTo100
        self.doorsCount = doorsCount
        self.mark = mark
        self.lights = lights
    }
    
    func lightOff() {
        lights = .off
    }
    
    func lightOn() {
        lights = .on
    }
    
    func description() {
        print("Автомобиль марки \(mark.rawValue), цвет кузова \(color.rawValue). Разгоняется до 100км/ч за \(secondsTo100) с и развивает максимальную скорость \(maxSpeed) км/ч. У автомобиля \(doorsCount) двери и \(lights.rawValue)")
    }

}
enum wheelSize: String {
    case min = "небольшие колеса 20"
    case mid = "средние колеса 21"
    case big = "большие колеса 22"
}

class trunkCar: Car {
    let bigWheels: wheelSize
    
    init(color: color, maxSpeed: Int, secondsTo100: Int, doorsCount: Int, mark: marks,bigWheels: wheelSize, lights: lights) {
        self.bigWheels = bigWheels
        super.init(color: color, maxSpeed: maxSpeed, secondsTo100: secondsTo100, doorsCount: doorsCount, mark: mark, lights: lights)
    }
    
    override func lightOff() {
        print("Ахтунг, выключенные однажды фары, могут больше не включится!")
    }
    
}

enum turboCharge: String {
    case inStock = "присутствует"
    case missing = "отсутствует"
}

class sportCar: Car{
    let turboCharging: turboCharge
    
    init(color: color, maxSpeed: Int, secondsTo100: Int, doorsCount: Int, mark: marks, lights: lights, turboCharging: turboCharge) {
        self.turboCharging = turboCharging
        super.init(color: color, maxSpeed: maxSpeed, secondsTo100: secondsTo100, doorsCount: doorsCount, mark: mark, lights: lights)
    }
    
    override func lightOn() {
        super.lightOn()
        print("Фары включены, но нужно подождать пока разгорится ксенон")
    }
}

var car1 = trunkCar(color: .red, maxSpeed: 120, secondsTo100: 18, doorsCount: 2, mark: .zil, bigWheels: .big, lights: .off)
var car2 = trunkCar(color: .blue, maxSpeed: 140, secondsTo100: 19, doorsCount: 2, mark: .honda, bigWheels: .min, lights: .on)
var car3 = sportCar(color: .red, maxSpeed: 240, secondsTo100: 9, doorsCount: 5, mark: .kia, lights: .off, turboCharging: .missing)
var car4 = sportCar(color: .gray, maxSpeed: 330, secondsTo100: 5, doorsCount: 3, mark: .bmw, lights: .on, turboCharging: .inStock)

car1.description()
car1.lightOn()
car2.description()
car3.description()
car3.lightOn()
car4.description()
