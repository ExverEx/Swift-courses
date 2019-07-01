import UIKit


enum Engine: String {
    case start = "Заведен"
    case stop = "Заглушен"
}

enum Windows: String {
    case close = "Закрыты"
    case open = "Открыты"
}

enum TrunkLoad {
    case load(Int)
    case unload(Int)
}

struct car{
    
    var mark : String
    var productionYear : Int
    var volumeOfTrunk : Int
    var engineStatus: Engine
    var windowsStatus: Windows
    var trunkVolumeFilled: TrunkLoad
    var currentCargoSpace: Int = 0
    
    mutating func perform(action: TrunkLoad) {
        switch action {
        case .load(let load):
            currentCargoSpace = load + currentCargoSpace
            print("Загружен на \(currentCargoSpace)")
        case .unload(let load):
            currentCargoSpace = currentCargoSpace - load
            print("Осталось \(currentCargoSpace)")
        }
    }
    
    mutating func engineStatusFunc() {
        guard self.engineStatus == .start else {
        self.engineStatus = .start
        return print("Двигатель запущен")
    }
        self.engineStatus = .stop
        return print("Двигатель заглушен")
    }
    
    mutating func windowsStatusFunc() {
        guard self.windowsStatus == .open else {
            self.windowsStatus = .open
            return print("Окна открыты")
        }
        self.windowsStatus = .close
        return print("Окна закрыты")
    }
    
    func description() {
        print("Легковой автомобиль \(mark) \(productionYear) года выпуска, имеет объем багажника \(volumeOfTrunk) литров, двигатель \(engineStatus.rawValue), стекла \(windowsStatus.rawValue), багажник \(trunkVolumeFilled)")
    }
}

struct truck {
    
    var mark : String
    var productionYear : Int
    var volumeOfTrunk : Int
    var engineStatus: Engine
    var windowsStatus: Windows
    var trunkVolumeFilled: TrunkLoad
    var currentCargoSpace: Int = 0
    
    mutating func perform(action: TrunkLoad) {
        switch action {
        case .load(let load):
            currentCargoSpace = load + currentCargoSpace
            print("Загружен на \(currentCargoSpace)")
        case .unload(let load):
            currentCargoSpace = currentCargoSpace - load
            print("Осталось \(currentCargoSpace)")
        }
    }
    
    mutating func engineStatusFunc() {
        guard self.engineStatus == .start else {
            self.engineStatus = .start
            return print("Двигатель запущен")
        }
        self.engineStatus = .stop
        return print("Двигатель заглушен")
    }
    
    mutating func windowsStatusFunc() {
        guard self.windowsStatus == .open else {
            self.windowsStatus = .open
            return print("Окна открыты")
        }
        self.windowsStatus = .close
        return print("Окна закрыты")
    }
    
    func description() {
        print("Грузовой автомобиль \(mark) \(productionYear) года выпуска, имеет объем кузова \(volumeOfTrunk) литров, двигатель \(engineStatus.rawValue), стекла \(windowsStatus.rawValue), кузов \(trunkVolumeFilled)")
    }
    
}

var kia = car(mark: "Kia", productionYear: 2017, volumeOfTrunk: 450, engineStatus: .start, windowsStatus: .close, trunkVolumeFilled: .load(200), currentCargoSpace: 50)

var ZIL = truck(mark: "ZIL", productionYear: 1985, volumeOfTrunk: 2500, engineStatus: .stop, windowsStatus: .open, trunkVolumeFilled: .load(1756), currentCargoSpace: 900)

kia.description()
ZIL.description()
kia.windowsStatusFunc()
ZIL.engineStatusFunc()
kia.perform(action: .load(200))

