import UIKit

//Написать функцию, которая определяет, четное число или нет.
func isEven(num: Int) -> String{
  
    return (num % 2 == 0) ? "Четное" : "Нечетное"
}

isEven(num: 3)
isEven(num: 10)

//Написать функцию, которая определяет, делится ли число без остатка на 3.
func isRemainder(num: Int) -> String {

    return (num % 3 == 0) ? "Делится без остатка" : "Делится с остатком"
}

isRemainder(num: 30)
isRemainder(num: 29)

//Создать возрастающий массив из 100 чисел.
var upperArray: [Int] = []

for i in 0...99 {
    upperArray.append(i)
}
upperArray

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for (_, value) in upperArray.enumerated() {
    if (value % 2) == 0 || (value % 3) != 0{
        upperArray.remove(at: upperArray.firstIndex(of: value)!)
    }
}
upperArray

//* Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

var sequence = [0, 1]
func addNum(n: Int)-> () {
    while sequence.count < n {
    var lastValue = sequence.last
    var preLastValue = sequence[sequence.count - 2]
    var newNum = lastValue! + preLastValue
    sequence.append(newNum)
    }
    print(sequence)
}

addNum(n: 91)





