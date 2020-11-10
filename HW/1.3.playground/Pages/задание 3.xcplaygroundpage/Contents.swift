import Foundation

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */

let monthOfBirth = 6
var quarter: Int?

switch monthOfBirth {
case 1...3:
    quarter = 1
case 4...6:
    quarter = 2
case 7...9:
    quarter = 3
case 10...12:
    quarter = 4
default:
    print("Something is wrong")
}

//для кейса, когда в месяц рождения ввели невалидное значение, сделаем проверку, чтобы не вывести еще одно сообщение "Я родился в nil квартале"
if let quarter = quarter {
    let message = "Я родился в \(quarter) квартале"
    print(message)
}
//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)
