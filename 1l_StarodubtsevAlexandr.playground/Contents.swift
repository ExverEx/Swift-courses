import UIKit

//Решить квадратное уравнение

let a: Double  = 3
let b: Double  = 4
let c: Double  = 1
let d = b * b - 4 * a * c

if d == 0 {
    let x = -b / 2 * a
    print("Уравнение имеет один корень, x = \((x))")
} else if d > 0 {
    let x1 = (-b + sqrt(d)) / 2 * a
    let x2 = (-b - sqrt(d)) / 2 * a
    print("Уравнение имеет два корня, x1 = \((x1)), x2 = \(x2)")
} else if d < 0 {
    print("Уравнение не имеет корней")
}

//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var katet1: Double = 4
var katet2: Double = 9
let gipotenuza = sqrt(katet1 * katet1 + katet2 * katet2)
let perimetr = katet1 + katet2 + gipotenuza
let ploshad = (katet1 + katet2) / 2
print("Гипотенуза треугольника равна \(gipotenuza), периметр равен \(perimetr), площадь равна \(ploshad)")

//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var depositValue = 9000
let percent = 10
let years = 5

for i in 1...years {
    depositValue = depositValue + depositValue * percent / 100
}

print("Ваши накопления через \(years) лет равны \(depositValue) рублей")
