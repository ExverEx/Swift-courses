import UIKit
//
//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

struct queueForSousage<T> {
    var pupil: [T] = []
    
    mutating func push(_ numbenInQueue: T) {
        
        pupil.append(numbenInQueue)
    }
    mutating func pop() -> T {
        
        return pupil.removeLast()
    }
    
    private mutating func sortArray<T: Equatable>(_ num1: T, _ num2: T) -> Bool {
        return num1 > num2
    }
    
    mutating func sortAsc() -> [T] {
        return pupil.sorted(by: sortArray)
    }
    
    subscript (index: Int) -> T? {
        
        return pupil.indices.contains(index) ? pupil[index] : nil
        
    }
}


var bankQueue = queueForSousage<Int>()
bankQueue.push(23)
bankQueue.push(99)
bankQueue.push(2)
bankQueue.push(43)
print(bankQueue)
print(bankQueue)
bankQueue[3]

    



