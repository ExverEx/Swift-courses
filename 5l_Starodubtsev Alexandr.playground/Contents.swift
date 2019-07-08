import UIKit

/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
 
 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
 
 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
 
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 
 6. Вывести сами объекты в консоль.
*/

var marks: [String] = ["Kia", "BMW", "Lexus", "ZIL", "MAZ"]

protocol Car {

    var engine: String {get set}
    var mass: Int {get set}
    var mark: String {get set}
    var lights: String {get set}
    
    func printDescription()
}

extension Car {
    mutating func switchLights() {
        if lights == "on" {
            lights = "off"
        } else {
            lights = "on"
        }
    }
}

extension Car {
        
    mutating func changeMark() {
        mark = marks.randomElement()!
    }
}

extension Car {
    
    mutating func switchEngine() {
        if engine == "on" {
            engine = "off"
        } else {
            engine = "on"
        }
    }
}

class TrunkCar: Car {
    
    var engine: String
    var mass: Int
    var mark: String
    var lights: String
    
    var wheelSize: String
    
    func printDescription() {
        
    }
    
    init(engine: String, mass: Int, mark: String, lights: String, wheelSize: String) {
        self.engine = engine
        self.mass = mass
        self.mark = mark
        self.lights = lights
        self.wheelSize = wheelSize
    }
    
}

class SportCar: Car {
    
    var engine: String
    var mass: Int
    var mark: String
    var lights: String
    
    var spoiler: String
    
    func printDescription() {
        
    }
    
    init(engine: String, mass: Int, mark: String, lights: String, spoiler: String) {
        self.engine = engine
        self.mass = mass
        self.mark = mark
        self.lights = lights
        self.spoiler = spoiler
    }
    
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Двигатель \(engine), марка автомобиля \(mark), масса \(mass), габариты \(lights), размер колес \(wheelSize)"
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Двигатель \(engine), марка автомобиля \(mark), масса \(mass), габариты \(lights), спойлер \(spoiler)"
    }
}

var car1 = TrunkCar(engine: "on", mass: 5000, mark: "Nissan", lights: "off", wheelSize: "big")

var car2 = SportCar(engine: "off", mass: 1200, mark: "VW", lights: "on", spoiler: "inStock")

print(car1)
print(car2)
car1.switchLights()
car2.switchEngine()
car2.changeMark()
car1.changeMark()
print(car1)
print(car2)
