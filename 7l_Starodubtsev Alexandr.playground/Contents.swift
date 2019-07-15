import UIKit

//1. Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.

//2. Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.

enum carShowRoomError: Error {
    case invalidSelection
    case notEnoughMoney(moneyNeeded: Int)
    case outOfStock
}

struct Cars {
    var price: Int
    var count: Int
}

class carShowRoom {
    
    var carsList = [
        "KIA" : Cars(price: 13000, count: 9),
        "Mazda" : Cars(price: 17000, count: 9),
        "BMW" : Cars(price: 25000, count: 9),
        "Bugatti" : Cars(price: 90000, count: 9)
    ]
    
    var money = 0
    
    func buyer(carName name: String) throws {
        
        guard let car = carsList[name] else {
            throw carShowRoomError.invalidSelection
        }
        
        guard car.price <= money else {
            throw carShowRoomError.notEnoughMoney(moneyNeeded: car.price - money)
        }
        guard car.count > 0 else {
            throw carShowRoomError.outOfStock
        }
        
        money -= car.price
        
        var newCar = car
        newCar.count -= 1
        carsList[name] = newCar
        
        print("Товар куплен \(name)")
    }
    
}

let favoriteMatks = [

    "Alex": "Mazaa",
    "Peter": "KIA",
    "Jhon": "BMW"

]

func buyFavoriteCar(mark: String, carShowRoom: carShowRoom) throws {
    
    let carName = favoriteMatks[mark] ?? "KIA"
    try carShowRoom.buyer(carName: carName)
}

var carShowRoomBuilding = carShowRoom()
carShowRoomBuilding.money = 10000

do {
    try buyFavoriteCar(mark: "KIA", carShowRoom: carShowRoomBuilding)
}catch carShowRoomError.invalidSelection{
    print("Неправильный выбор")
}catch carShowRoomError.notEnoughMoney(let moneyNeeded) {
    print("Недостаточно денег. Нехватает \(moneyNeeded)")
}catch carShowRoomError.outOfStock{
    print("Автомобили закончились")
}
