import UIKit

//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let dictionary = ["Салават Юлаев": ["3:6", "5:5"], "Авангард": ["2:1", "2:3"], "АкБарс": ["3:3", "1:2"]]

for (commandName, score) in dictionary {
    for oneGame in score {
        print("Игра с " + commandName + " - " + oneGame)
    }
}
/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */
func ageCalculation(day: Int, month: Int, year: Int) {
    let currentDay = 18
    let currentMonth = 11
    let currentYear = 2020
    
    let commomCountDays = (360 * currentYear) + (30 * currentMonth) + currentDay
    let daysBeforeMyBirthday = (360 * year) + (30 * month) + day
    let numberOfDaysLived = commomCountDays - daysBeforeMyBirthday
    let numberOfMonthLived = numberOfDaysLived / 30
    let numberOfYearsLived = numberOfMonthLived / 12
    let messageForConsole = "\(numberOfYearsLived) years, \(numberOfMonthLived) months and \(numberOfDaysLived) days have passed since my birth"

    print(messageForConsole)
}

ageCalculation(day: 15, month: 12, year: 1994)
/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */
func calculateMoneyInWallet(money: [Int]) -> Int {
    var sumOfMoney = 0
    for bill in money {
        sumOfMoney += bill
    }
    return sumOfMoney
}
//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму
let moneyInWallet = [50, 100, 500, 1000, 2000, 5000]
let moneySum = calculateMoneyInWallet(money: moneyInWallet)
/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */
func determineEvenNumber(number: Int) -> Bool {
    if (number % 2) == 0 {
        return true
    } else {
        return false
    }
}
/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/
func determineMultiplicityOfThree(number: Int) -> Bool {
    if (number % 3) == 0 {
        return true
    } else {
        return false
    }
}
/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
func creatingArrayAtGivenInterval(from numberX: Int, to numberY: Int) -> Array<Int> {
    var finalArray = [Int]()
    for number in numberX...numberY {
        finalArray.append(number)
    }
    return finalArray
}
/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
let array = creatingArrayAtGivenInterval(from: 1, to: 100)
/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */
func deleteNumerMultiplicityTwoAndTree(array: [Int]) -> [Int] {
    var finalArray = [Int]()
    for number in array {
        if !determineEvenNumber(number: number) && !determineMultiplicityOfThree(number: number) {
            finalArray.append(number)
        }
    }
    return finalArray
}
print(deleteNumerMultiplicityTwoAndTree(array: array))
/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1905, функция возвратит 20. Для 1899 возвратит 19
 */
func definitionOfTheCentury(year: Int) -> Int {
    var century = year / 100
    if !(year % 100 == 0) {
        century += 1
    }
    return century
}
/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */

func fibonacci1(amount: Int) -> [Int] {
    var array = [Int]()
    
    if amount == 0 {
        return array
    } else if amount == 1 {
        array.append(0)
        return array
    } else if amount == 2 {
        array = [0, 1]
        return array
    } else if amount > 0 {
        array = [0, 1]
        for _ in 3...amount {
            let newValue = array[array.count - 1] + array[array.count - 2]
            array.append(newValue)
        }
    } else {
        print("Нельзя вводить отрицательные числа")
    }
    return array
}

fibonacci1(amount: 8)

func isNumberEven(number: Int) {
    number % 2 == 0
}
isNumberEven(number: 4)
